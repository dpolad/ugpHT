#define CRC16 0x8005
int gen_crc16(int *data, int size)
{
    int out = 0;
    int bits_read = 0, bit_flag;
    float a = 4.4;
    float b = 1.1;
    

    while(size > 0)
    {
        bit_flag = out >> 15;
	b = b*a;
        /* Get next bit: */
        out <<= 1;
        out |= (*data >> bits_read) & 1; // item a) work from the least significant bits

        /* Increment bit counter: */
        bits_read++;
        if(bits_read > 7)
        {
            bits_read = 0;
            data++;
            size--;
        }

        /* Cycle check: */
        if(bit_flag) out ^= CRC16;

    }
}
