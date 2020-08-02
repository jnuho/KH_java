package twoD.array;

import java.util.Scanner;

public class TwoDArray {
	public static final Scanner CONSOLE = new Scanner(System.in);
	public void test1() {
		int[][] arr = new int[15][11];
		for(int i =0; i<arr.length; i++) {
			for(int j=0; j<arr[i].length; j++) {
				arr[i][j] = i*arr[i].length + j;
				System.out.print(arr[i][j]+1 + " ");
			}
			System.out.println();
		}
	}
	
	public void test2() {
		String[][] students = {{"ȫ�浿", "�庸��"},
					{"�̼���", "���¹�"},
					{"������", "������"},
					{"������", "������"},
					{"�念��", "������"},
					{"�Ӳ���", "�̻��"},
				};
//		String[] students= {"ȫ�浿","�̼���","������","������"
//				,"�念��","�Ӱ���","�庸��","���¹�","������",
//				"������","������","�̻��"};
		int index = 0;

		String[][] arr1 = new String[students.length/2][2];
		String[][] arr2 = new String[students.length/2][2];
		
		for(int i=0; i<arr1.length; i++) {
			for(int j=0; j<arr1[i].length; j++) {
				arr1[i][j] = students[index][0];
				arr2[i][j] = students[index++][1];
			}
		}
		
		System.out.println("=== 1�д� ===");
		for(int i =0;i<arr1.length; i++) {
			for(int j=0;j<arr1[i].length; j++)
				System.out.print(arr1[i][j] + " ");
			System.out.println();
		}

		System.out.println("=== 2�д� ===");
		for(int i =0;i<arr2.length; i++) {
			for(int j=0;j<arr2[i].length; j++)
				System.out.print(arr2[i][j] + " ");
			System.out.println();
		}
		
		System.out.print("=============================\n"
				+ "�˻��� �л� �̸��� �Է��ϼ���: ");
		String name = CONSOLE.nextLine();
		
		int bundan = 0;
		int row = 0, col = 0; //��ġ

		for(int i =0;i<arr1.length; i++) {
			for(int j=0;j<arr1[i].length; j++) {
				if(arr1[i][j].equals(name)) {
					bundan = 1;
					row = i;
					col = j;
				}
			}
		}
		
		if(bundan !=0) return;
		for(int i =0;i<arr2.length; i++) {
			for(int j=0;j<arr2[i].length; j++) {
				if(arr2[i][j].equals(name)) {
					bundan = 2;
					row = i;
					col = j;
				}
			}
		}
		if(bundan == 0)
			System.out.println("�˻� �Ͻ� �л��� �����ϴ�!");

		System.out.println("\n�˻��Ͻ� " + name + " �л��� " + bundan +"�д�\n"
				+ (row+1)+"��° ��, " +(col+1) +"��° ĭ�� �ֽ��ϴ�.");
	}
	
	public void test3() {
		System.out.print("���� ���� ���� �Է� : ");
		int row = CONSOLE.nextInt();
		System.out.print("���� ���� ���� �Է� : ");
		int col = CONSOLE.nextInt();
		
		char[][] arr = new char[row][col];
		char ch = '\u0000';

		for(int i=0; i<row; i++) {
			for(int j=0; j<col; j++) {
				ch = (char)(65 + (int)(Math.random()*26));
				arr[i][j] = ch;
				System.out.print(arr[i][j] + " ");
			}
			System.out.println();
		}
	}
	
	public void test4() {
		System.out.println("================== A�� ����ǥ ==================");
		System.out.println("�̸�\t����\t����\t����\t�հ�\t���");
		System.out.println("---------------------------------------------");
		int[][] scores = {{80,90,77},
				{78,97,86},
				{71,68,88}, };
		String[] names = {"ȫ�浿", "�̼���", "������"};
		int sum = 0;
		int korSum = 0, engSum = 0, mathSum = 0;
		double avg = 0, avgSum = 0;
		
		for(int i=0; i<scores.length; i++) {
			sum = 0; avg =0;
			korSum +=scores[i][0];
			engSum +=scores[i][1];
			mathSum +=scores[i][2];
			System.out.print(names[i] + "\t");
			for(int j=0; j<scores[i].length; j++) {
				System.out.print(scores[i][j] + "\t");
				sum +=scores[i][j];
			}
			avg = sum /3.0;
			avgSum += avg;
			System.out.print(sum + "\t");
			System.out.printf("%.1f\n", avg);
		}
		System.out.println("---------------------------------------------");
		sum = korSum + engSum + mathSum;
		System.out.printf("�հ�\t%d\t%d\t%d\t%d\t%.1f\n", 
				korSum, engSum, mathSum, sum, (avgSum/3.0));
	}
	
	//������
	public void test5() {
		String[][] animals = new String[3][];
		animals[0] = new String[2];
		animals[1] = new String[3];
		animals[2] = new String[1];
		
		String animal = "";
		for(int i =0; i<animals.length; i++) {
			switch(i) {
			case 0: animal = "������"; break;
			case 1: animal = "����"; break;
			case 2: animal = "�����"; break;
			}

			for(int j=0; j<animals[i].length; j++) {
				System.out.print(animal + animals[i].length +"���� �Է� " +(j+1) +"��° : ");
				animals[i][j] = CONSOLE.nextLine();
			}
		}
		
		System.out.print("����� ���ϴ� ����(0.������ 1.���� 2.�����): ");
		int choice = CONSOLE.nextInt();

		for(int i =0; i<animals.length; i++) {
			if(i==choice) {
				System.out.print("animals["+i+"] = {");
				for(int j=0; j<animals[i].length; j++) {
					System.out.print(animals[i][j]);
					if(j != animals[i].length - 1)
						System.out.print(", ");
				}
				System.out.println("}");
			}
		}
	}
	
	public void test6() {
		System.out.print("��ħ �Ĵ�(������ �������� ������ �ּ���) : ");
		String morning = CONSOLE.nextLine();
		System.out.print("���� �Ĵ�(������ �������� ������ �ּ���) : ");
		String noon = CONSOLE.nextLine();
		System.out.print("���� �Ĵ�(������ �������� ������ �ּ���) : ");
		String dinner = CONSOLE.nextLine();


		String[][] diet = new String[3][];
		diet[0] = morning.split(" ");
		diet[1] = noon.split(" ");
		diet[2] = dinner.split(" ");

		for(int i =0 ;i<diet.length; i++) {
			switch(i) {
			case 0: System.out.println("=== ��ħ �Ĵ� ==="); break;
			case 1: System.out.println("=== ���� �Ĵ� ==="); break;
			case 2: System.out.println("=== ���� �Ĵ� ==="); break;
			}
			for(int j=0; j<diet[i].length; j++)
				System.out.print(diet[i][j]+ " ");
			System.out.println();
		}
	}
	
	public void test7() {
		System.out.print("�����ϴ� ������ �Է��ϼ���.(�ܾ���̴� �������� ����) => ");
		String[] colors = CONSOLE.nextLine().split(" ");
		String[][] data = new String[colors.length][]; 

		int index = 0;

		for(String col : colors) {
			System.out.printf("%s �繰�� �����غ�����.(�ܾ���̴� �������� ����) => ", col);
			data[index++] = CONSOLE.nextLine().split(" ");
		}
		
		int choice = 0;
		do {
			System.out.println("����� �����ϴ� ������ �����ϼ���.(�����Ϸ��� 0 �Է�)");
			for(int i =0; i<data.length; i++)
				System.out.print((i+1) +". " + colors[i] + " ");
			System.out.print("\n=> ");
			choice = CONSOLE.nextInt();
			if(choice == 0) {
				System.out.println("���α׷��� �����մϴ�...");
				break;
			}

			for(int i =0 ;i<data[choice-1].length; i++) {
				System.out.print(data[choice-1][i] + " ");
			}
			System.out.println();
		} while(choice != 0);
	}
}
