package test_0413;

public class array_0413 {
	public static void main(String[] args) {
		
	// 284페이지
	// 배열 :: 같은 자료형, 여러 값을 저장할 수 있는 변수 공간

	// 배열 선언 :: (타입)(배열이름)[] = new (타입) [배열크기];
	int arr[] = new int [5];
	
	// 배열값 저장 :: (배열이름)[배열인덱스] = (저장할 값);
	// [배열인덱스] :: 배열크기가 5일때, 0번째 ~ 4번째인 배열 생성 
	arr[0] = 100;
	arr[1] = 200;
	arr[2] = 300;
	arr[3] = 400;
	arr[4] = 500;
	
	// 배열값 얻어오는 방법
	System.out.println(arr[1]);
	System.out.println("4번째 인덱스에 저장된 값 : "+arr[4]);
	}
}
