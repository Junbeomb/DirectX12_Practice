float4 main( float4 pos : POSITION ) : SV_POSITION
{
	return pos;
}

float4 VSMain(uint nVertexID : SV_VertexID) : SV_POSITION
{
    
    float4 output = (float4) 0;
    if (nVertexID == 0)
        output = float4(-1.0f, +1.0f, 0.0f, 1.0f);
    else if (nVertexID == 1)
        output = float4(+1.0f, +1.0f, 0.0f, 1.0f);
    else if (nVertexID == 2)
        output = float4(+1.0f, -1.0f, 0.0f, 1.0f);
    else if (nVertexID == 3)
        output = float4(-1.0f, +1.0f, 0.0f, 1.0f);
    else if (nVertexID == 4)
        output = float4(+1.0f, -1.0f, 0.0f, 1.0f);
    else if (nVertexID == 5)
        output = float4(-1.0f, -1.0f, 0.0f, 1.0f);
    return (output);
}

 #define FRAME_BUFFER_WIDTH 800.0f
 #define FRAME_BUFFER_HEIGHT 600.0f

 #define HALF_WIDTH (FRAME_BUFFER_WIDTH * 0.5f)
 #define HALF_HEIGHT (FRAME_BUFFER_HEIGHT * 0.5f)
 #define EPSILON 1.0e-5f

inline bool IsZero(float fValue)
{
    return ((abs(fValue) <=  EPSILON));
}
inline bool IsZero(float fValue, float fEpsilon)
{
    return ((abs(fValue) <= fEpsilon));
}
inline bool IsEqual(float fA, float fB, float fEpsilon)
{
    return ((abs(fA - fB) <= fEpsilon));
}


//�ȼ� ���̴��� �����Ѵ�.
float4 PSMain(float4 input : SV_POSITION) : SV_TARGET
{
    //������
    //float4 cColor = float4(0.0f, 0.0f, 0.0f, 1.0f);
    //cColor.r = input.x / FRAME_BUFFER_WIDTH;
    //cColor.g = input.y / FRAME_BUFFER_HEIGHT;
    //return (cColor);
    
     float4 cColor = float4(0.0f, 0.0f, 0.0f, 1.0f);
    {
        //���׸���
    
        //���� ���� �������� �׶��̼�
         //cColor.rgb = distance(float2(0.0f, 0.0f), input.xy / float2(FRAME_BUFFER_WIDTH,  FRAME_BUFFER_HEIGHT));
         // cColor.rgb = length(input.xy / float2(FRAME_BUFFER_WIDTH, FRAME_BUFFER_HEIGHT));
    
        //�߾��� ��������
        //cColor.rgb = distance(float2(0.0f, 0.0f), (input.xy / float2(FRAME_BUFFER_WIDTH, FRAME_BUFFER_HEIGHT) -0.5f)); // (0, 1) : (-0.5, 0.5)
         //cColor.rgb = length(input.xy / float2(FRAME_BUFFER_WIDTH, FRAME_BUFFER_HEIGHT) -  0.5f);
         //cColor.rgb = distance(float2(0.5f, 0.5f), input.xy / float2(FRAME_BUFFER_WIDTH,FRAME_BUFFER_HEIGHT));
    
         //��谡 ��Ȯ�� ��
        //float fDistance = distance(float2(0.5f, 0.5f), input.xy / float2(FRAME_BUFFER_WIDTH, FRAME_BUFFER_HEIGHT));
        //if (fDistance < 0.25f)
        //    cColor.b = 1.0f;
        
        //ȭ�� ���μ��� ���� ������� �׻� ���׶� ��
        //float2 f2NDC = float2(input.x / FRAME_BUFFER_WIDTH, input.y / FRAME_BUFFER_HEIGHT) - 0.5f; // (0, 1) : (-0.5, 0.5)
        //f2NDC.x *= (FRAME_BUFFER_WIDTH / FRAME_BUFFER_HEIGHT);
            //���� 1 : ��� ��Ȯ�� �Ķ��� ��
            // cColor.b = step(length(f2NDC), 0.25f); //step(x, y) = (x <= y) ? 1 : 0
            //cColor.b = (length(f2NDC) <= 0.25f) ? 1.0f : 0.0f; //step(x, y) = (x <= y) ? 1 : 0
            //���� 2 : ��� ��ȣ�� ��� ��
            //float fLength = length(f2NDC);
            //float fMin = 0.3f, fMax = 0.2f;
            //cColor.rgb = smoothstep(fMin, fMax, fLength);
        
        //2���� �� ���� �� ���� �� �� ����
        //if ((int) input.x == (int) HALF_WIDTH)
        //    cColor.g = 1.0f;
        //if ((int) input.y == (int) HALF_HEIGHT)
        //    cColor.r = 1.0f;
        //float fDistance = distance((int2) input.xy, float2(HALF_WIDTH, HALF_HEIGHT));
        //if (IsEqual(fDistance, 100.0f, 0.5f))
        //    cColor.b = 1.0f;
        
    }
    return (cColor);
    
}