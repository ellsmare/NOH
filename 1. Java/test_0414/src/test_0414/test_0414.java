package test_0414;
import java.util.Scanner;
// package와 import 위치 바꾸면 안됨;;;

public class test_0414 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
	// 1차원 배열 :: [] 1개
		// 배열 선언 :: (타입)(배열이름)[]=new (타입)[배열크기];
		
		// 1. 배열 공간만 선언
		//int arr[] = new int [5];
		
		// 2. 배열에 값을 저장하면서 선언
		int ar1[]= {10, 20, 30};
		System.out.println("ar1[1] : "+ar1[1]);
				
	// 2차원 배열 :: [][] 2개
		// 행과 열이 함께 존재하는 배열 
		// (타입)(배열이름)[][] = new (타입) [행][열];
		// 2행(0 1)*3열(0 1 2)
		int arr1[][] = new int[2][3]; 
		
		// {중괄호 { 중괄호}}
		int arr2[][]= {{1, 2, 3}, {4, 5, 6}};
		
		System.out.println("arr2[1][2] : "+arr2[1][2]);
		}
	}

