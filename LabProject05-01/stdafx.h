// header.h: 표준 시스템 포함 파일
// 또는 프로젝트 특정 포함 파일이 들어 있는 포함 파일입니다.
//

#pragma once
//#define _WITH_SWAPCHAIN_FULLSCREEN_STATE //실행 시 전체 화면
#include "targetver.h"
#define WIN32_LEAN_AND_MEAN             // 거의 사용되지 않는 내용을 Windows 헤더에서 제외합니다.
// Windows 헤더 파일
#include <windows.h>
// C 런타임 헤더 파일입니다.
#include <stdlib.h>
#include <malloc.h>
#include <memory.h>
#include <tchar.h>

// time
#include <timeapi.h>


//direct3D 관련
#include <string>
#include <wrl.h>
#include <shellapi.h>
#include <d3d12.h> //Direct3D 12 API 함수를 사용하기 위해 반드시 포함
#include <dxgi1_4.h>
#include <D3Dcompiler.h>
#include <DirectXMath.h>
#include <DirectXPackedVector.h>
#include <DirectXColors.h>
#include <DirectXCollision.h>
#include <DXGIDebug.h>
using namespace DirectX;
using namespace DirectX::PackedVector;
using Microsoft::WRL::ComPtr;

//import 라이브러리 
#pragma comment(lib, "d3dcompiler.lib")
#pragma comment(lib, "d3d12.lib")
#pragma comment(lib, "dxgi.lib")
#pragma comment(lib, "dxguid.lib")

//timeGetTime 링크
#pragma comment(lib, "winmm.lib")


//주 윈도우의 클라이언트 영역의 크기
#define FRAME_BUFFER_WIDTH 800
#define FRAME_BUFFER_HEIGHT 600