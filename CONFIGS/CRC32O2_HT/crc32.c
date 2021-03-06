/**********************************************************************
 *
 * Filename:    crc.c
 * 
 * Description: Slow and fast implementations of the CRC standards.
 *
 * Notes:       The parameters for each supported CRC standard are
 *				defined in the header file crc.h.  The implementations
 *				here should stand up to further additions to that list.
 *
 * 
 * Copyright (c) 2000 by Michael Barr.  This software is placed into
 * the public domain and may be used for any purpose.  However, this
 * notice must not be changed or removed and no warranty is either
 * expressed or implied by its publication or distribution.
 **********************************************************************/
/***********************************************************************
 *
 * TCE version modified by Otto Esko
 *
 * Changes:
 * Only CRC-32 version is used, other versions are omitted.
 * crcSlow version is preserved although it's not used.
 *
 **********************************************************************/
 
#include "crc.h"


/*
 * Derive parameters from the standard-specific parameters in crc.h.
 */
#define WIDTH    32
#define TOPBIT   (1 << (WIDTH - 1))

#define REFLECT_DATA(X)			((unsigned char) reflect((X), 8))

#define REFLECT_REMAINDER(X)	((crc) reflect((X), WIDTH))

crc  crcTable[256] = {0UL,79764919UL,159529838UL,222504665UL,319059676UL,398814059UL,445009330UL,507990021UL,638119352UL,
583659535UL,797628118UL,726387553UL,890018660UL,835552979UL,1015980042UL,944750013UL,1276238704UL,
1221641927UL,1167319070UL,1095957929UL,1595256236UL,1540665371UL,1452775106UL,1381403509UL,1780037320UL,
1859660671UL,1671105958UL,1733955601UL,2031960084UL,2111593891UL,1889500026UL,1952343757UL,2552477408UL,
2632100695UL,2443283854UL,2506133561UL,2334638140UL,2414271883UL,2191915858UL,2254759653UL,3190512472UL,
3135915759UL,3081330742UL,3009969537UL,2905550212UL,2850959411UL,2762807018UL,2691435357UL,3560074640UL,
3505614887UL,3719321342UL,3648080713UL,3342211916UL,3287746299UL,3467911202UL,3396681109UL,4063920168UL,
4143685023UL,4223187782UL,4286162673UL,3779000052UL,3858754371UL,3904687514UL,3967668269UL,881225847UL,
809987520UL,1023691545UL,969234094UL,662832811UL,591600412UL,771767749UL,717299826UL,311336399UL,
374308984UL,453813921UL,533576470UL,25881363UL,88864420UL,134795389UL,214552010UL,2023205639UL,
2086057648UL,1897238633UL,1976864222UL,1804852699UL,1867694188UL,1645340341UL,1724971778UL,1587496639UL,
1516133128UL,1461550545UL,1406951526UL,1302016099UL,1230646740UL,1142491917UL,1087903418UL,2896545431UL,
2825181984UL,2770861561UL,2716262478UL,3215044683UL,3143675388UL,3055782693UL,3001194130UL,2326604591UL,
2389456536UL,2200899649UL,2280525302UL,2578013683UL,2640855108UL,2418763421UL,2498394922UL,3769900519UL,
3832873040UL,3912640137UL,3992402750UL,4088425275UL,4151408268UL,4197601365UL,4277358050UL,3334271071UL,
3263032808UL,3476998961UL,3422541446UL,3585640067UL,3514407732UL,3694837229UL,3640369242UL,1762451694UL,
1842216281UL,1619975040UL,1682949687UL,2047383090UL,2127137669UL,1938468188UL,2001449195UL,1325665622UL,
1271206113UL,1183200824UL,1111960463UL,1543535498UL,1489069629UL,1434599652UL,1363369299UL,622672798UL,
568075817UL,748617968UL,677256519UL,907627842UL,853037301UL,1067152940UL,995781531UL,51762726UL,
131386257UL,177728840UL,240578815UL,269590778UL,349224269UL,429104020UL,491947555UL,4046411278UL,
4126034873UL,4172115296UL,4234965207UL,3794477266UL,3874110821UL,3953728444UL,4016571915UL,3609705398UL,
3555108353UL,3735388376UL,3664026991UL,3290680682UL,3236090077UL,3449943556UL,3378572211UL,3174993278UL,
3120533705UL,3032266256UL,2961025959UL,2923101090UL,2868635157UL,2813903052UL,2742672763UL,2604032198UL,
2683796849UL,2461293480UL,2524268063UL,2284983834UL,2364738477UL,2175806836UL,2238787779UL,1569362073UL,
1498123566UL,1409854455UL,1355396672UL,1317987909UL,1246755826UL,1192025387UL,1137557660UL,2072149281UL,
2135122070UL,1912620623UL,1992383480UL,1753615357UL,1816598090UL,1627664531UL,1707420964UL,295390185UL,
358241886UL,404320391UL,483945776UL,43990325UL,106832002UL,186451547UL,266083308UL,932423249UL,
861060070UL,1041341759UL,986742920UL,613929101UL,542559546UL,756411363UL,701822548UL,3316196985UL,
3244833742UL,3425377559UL,3370778784UL,3601682597UL,3530312978UL,3744426955UL,3689838204UL,3819031489UL,
3881883254UL,3928223919UL,4007849240UL,4037393693UL,4100235434UL,4180117107UL,4259748804UL,2310601993UL,
2373574846UL,2151335527UL,2231098320UL,2596047829UL,2659030626UL,2470359227UL,2550115596UL,2947551409UL,
2876312838UL,2788305887UL,2733848168UL,3165939309UL,3094707162UL,3040238851UL,2985771188UL
};

crc result = 0;
unsigned char  test[] = "SaNz";
#define LENGTH 4

/*********************************************************************
 *
 * Function:    reflect()
 * 
 * Description: Reorder the bits of a binary sequence, by reflecting
 *				them about the middle position.
 *
 * Notes:		No checking is done that nBits <= 32.
 *
 * Returns:		The reflection of the original data.
 *
 *********************************************************************/
static unsigned long
reflect(unsigned long data, unsigned char nBits)
{
	unsigned long  reflection = 0x00000000;
	unsigned char  bit;

	/*
	 * Reflect the data about the center bit.
	 */
	for (bit = 0; bit < nBits; ++bit)
	{
		/*
		 * If the LSB bit is set, set the reflection of it.
		 */
		if (data & 0x01)
		{
			reflection |= (1 << ((nBits - 1) - bit));
		}

		data = (data >> 1);
	}

	return (reflection);

}	/* reflect() */


/*********************************************************************
 *
 * Function:    crcFast()
 * 
 * Description: Compute the CRC of a given message.
 *
 * Notes:		crcInit() must be called first.
 *
 * Returns:		The CRC of the message.
 *
 *********************************************************************/
crc
crcFast(unsigned char const message[], int nBytes)
{
    crc	           remainder = INITIAL_REMAINDER;
    unsigned char  data;
	int            byte;


    /*
     * Divide the message by the polynomial, a byte at a time.
     */
    for (byte = 0; byte < nBytes; ++byte)
    {
        data = REFLECT_DATA(message[byte]) ^ (remainder >> (WIDTH - 8));
  		remainder = crcTable[data] ^ (remainder << 8);
    }

    /*
     * The final remainder is the CRC.
     */
    return (REFLECT_REMAINDER(remainder) ^ FINAL_XOR_VALUE);

}   /* crcFast() */

/*********************************************************************
 *
 * Function:    maincrctest()
 *
 *********************************************************************/

int 
maincrctest(void) {
    
    /*
     * Compute the CRC of the test message, more efficiently.
     */
    // crcInit();
    result = crcFast(test, LENGTH);
    printf(result);
    
    return 0;
}
