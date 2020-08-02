package logic.home.view;

import java.util.Scanner;

import logic.home.model.VariableSample;
import logic.home.model.PrimitiveTypeSample;
import logic.home.model.IfSample;
import logic.home.model.SwitchSample;
import logic.home.model.ForSample;
import logic.home.model.WhileSample;
import logic.home.model.DoWhileSample;
import logic.home.model.BreakSample;
import logic.home.model.ContinueSample;
import logic.home.model.StaticMethodSample;
import logic.home.model.NonStaticMethodSample;


public class Menu {
	public static final Scanner CONSOLE = new Scanner(System.in);

	public static void mainMenu(){
		int no = 0;
		char answer = '\u0000';
		
		do {
			System.out.println("***** ���α׷��� �⺻ ��� �׽�Ʈ ���α׷� *****");
			System.out.println("1. ���� �׽�Ʈ");
			System.out.println("2. �⺻ �ڷ��� �׽�Ʈ");
			System.out.println("3. if�� �׽�Ʈ");
			System.out.println("4. switch�� �׽�Ʈ");
			System.out.println("5. for�� �׽�Ʈ");
			System.out.println("6. while�� �׽�Ʈ");
			System.out.println("7. do~while�� �׽�Ʈ");
			System.out.println("8. break�� �׽�Ʈ");
			System.out.println("9. continue�� �׽�Ʈ");
			System.out.println("10. static �޼ҵ� ��� �׽�Ʈ");
			System.out.println("11. non-static �޼ҵ� ��� �׽�Ʈ");
			System.out.println("12. ���α׷� ����");
			System.out.print("�޴� ��ȣ �Է� : ");
			no = CONSOLE.nextInt();
			
			switch(no)
			{
			case 1: subVarMenu(); break;
			case 2: subPTypeMenu(); break;
			case 3: subIfMenu(); break;
			case 4: subSwitchMenu(); break;
			case 5: subForMenu(); break;
			case 6: subWhileMenu(); break;
			case 7: subDoWhileMenu(); break;
			case 8: subBreakMenu(); break;
			case 9: subContinueMenu(); break;
			case 10: subStaticMethodMenu(); break;
			case 11: subNonStaticMethodMenu(); break;
			case 12:
				System.out.println("���α׷��� �����մϴ�...");
				break;
			}
			
			System.out.print("������ �����Ͻðڽ��ϱ�? (��:y/�ƴϿ�:n) : ");
			answer = CONSOLE.nextLine().charAt(0);
		}while(Character.toUpperCase(answer) != 'Y');
	}
	
	public static void subVarMenu(){
		int no = 0;
		VariableSample vs = new VariableSample();
		do {
			System.out.println("*** ���� �׽�Ʈ �θ޴� ***");
			System.out.println("1. �� �Ż����� ������ ��� ����ϱ�");
			System.out.println("2. ��������� Ű����� �Է¹޾� ����ϱ�");
			System.out.println("3. �⺻ �ڷ��� ������ �ʱⰪ Ȯ���ϱ�");
			System.out.println("4. ���� �޴��� ����");
			System.out.print("�޴� ���� : ");
			no = CONSOLE.nextInt();

			switch(no) {
			case 1: vs.myProfile(); break;
			case 2: vs.empInformation(); break;
			case 3: vs.defaultValue(); break;
			case 4: System.out.println("���� �޴��� ���ư��ϴ�.");
				return;
			default:
				System.out.println("�߸��� �޴���ȣ �Դϴ�. �ٽ� �Է��ϼ���.");
				break;
			}
		}while(no != 4);
	}

	public static void subPTypeMenu(){
		int no = 0;
		PrimitiveTypeSample pts = new PrimitiveTypeSample();
		do {
			System.out.println("*** �⺻�ڷ��� �׽�Ʈ �θ޴� ***");
			System.out.println("1. �⺻�ڷ��� �޸� �Ҵ�ũ�� Ȯ���ϱ�");
			System.out.println("2. �⺻�ڷ��� ���� �ּҰ�, �ִ밪 ����ϱ�");
			System.out.println("3. �⺻�ڷ��� ��Ʈ���� Ȯ���ϱ�");
			System.out.println("4. ���� �޴��� ����");
			System.out.print("�޴� ���� : ");
			no = CONSOLE.nextInt(); CONSOLE.nextLine();

			switch(no)
			{
			case 1:	pts.typeSize(); break;
			case 2:	pts.minMaxValue(); break;
			case 3:	pts.bitSize(); break;
			case 4:	System.out.println("���� �޴��� ���ư��ϴ�.");
				return;	//���� �޴��� �ǵ��ư�.
			default:
				System.out.println("�߸��� �޴���ȣ �Դϴ�. �ٽ��Է��ϼ���.");
				break;
			}
		}while(no != 4);
	}

	public static void subIfMenu(){
		int no = 0;
		IfSample is = new IfSample();
		do {
			System.out.println("*** if�� �׽�Ʈ �θ޴� ***");
			System.out.println("1. �� ���� ������ �Է¹޾�, �� ���� ū �� ����ϱ�");
			System.out.println("2. �� ���� ������ �Է¹޾�, �� ���� ���� �� ����ϱ�");
			System.out.println("3. �� ���� ������ �Է¹޾�, �� ���� ���� ū���� ���� ������ ����ϱ�");
			System.out.println("4. �� ���� ������ �Է¹޾�, ¦������ Ȧ������ ����ϱ�");
			System.out.println("5. ��,��,�� �� ������ ������ �Է¹޾�, �հ�/���հ� Ȯ���ϱ�");
			System.out.println("6. ������ �Է¹޾�, ���� Ȯ���ϱ�");
			System.out.println("7. �� ���� ������ �Է¹޾�, ������� 0���� �������� Ȯ���ϱ�");
			System.out.println("8. ���� �ϳ��� �Է¹޾�, ����빮������ �ҹ������� ���ڹ������� "
					+ "��Ÿ�������� Ȯ���ϱ�");
			System.out.println("9. ���� �޴��� ����");
			System.out.println("�޴� ���� : ");
			no = CONSOLE.nextInt();

			switch(no)
			{
			case 1:	is.maxNumber(); break;
			case 2:	is.minNumber(); break;
			case 3:	is.threeMaxMin(); break;
			case 4:	is.checkEven(); break;
			case 5:	is.isPassFail(); break;
			case 6:	is.scoreGrade(); break;
			case 7:	is.checkPlusMinusZero(); break;
			case 8:	is.whatCaracter(); break;
			case 9:	System.out.println("���� �޴��� ���ư��ϴ�.");
				return;	//���� �޴��� �ǵ��ư�.
			default:
				System.out.println("�߸��� �޴���ȣ �Դϴ�. �ٽ��Է��ϼ���.");
				break;
			}
		}while(no != 9);
	}

	public static void subSwitchMenu(){
		int no = 0;
		SwitchSample ss = new SwitchSample();
		do {
			System.out.println("*** switch�� �׽�Ʈ �θ޴� ***");
			System.out.println("1. �� ���� ������ �� ���� ���깮�ڸ� �Է¹޾� ����� ��� Ȯ���ϱ�");
			System.out.println("2. �����̸��� ���ڿ��� �Է¹޾�, �� ������ ���� ����ϱ�");
			System.out.println("3. ���� �޴��� ����");
			System.out.print("�޴� ���� : ");
			no = CONSOLE.nextInt();

			switch(no)
			{
			case 1:	ss.calculator(); break;
			case 2:	ss.fruitPrice(); break;
			case 3:	System.out.println("���� �޴��� ���ư��ϴ�.");
				return;	//���� �޴��� �ǵ��ư�.
			default:
				System.out.println("�߸��� �޴���ȣ �Դϴ�. �ٽ��Է��ϼ���.");
				break;
			}
		}while(no != 3);
	}

	public static void subForMenu(){
		int no = 0;
		ForSample fs = new ForSample();
		
		do {
			System.out.println("for�� �׽�Ʈ �θ޴� ***");
			System.out.println("1. 1~10���� �������� �հ� ���ϱ�");
			System.out.println("2. 1~100������ ¦������ �հ� ���ϱ�");
			System.out.println("3. ���� �ϳ� �Է¹޾�, �� ���� ������ ����ϱ�");
			System.out.println("4. �� ���� ������ �Է¹޾�, �� ���� ���� ������ ū �������� �հ� ���ϱ�");
			System.out.println("5. �ټ��� ĭ�� �Է¹޾�, �Էµ� �ټ�/ĭ����ŭ ��ǥ���� ����ϱ�");
			System.out.println("6. 7�ٿ� 7ĭ�� ��ǥ���� ����ϵ�, �� �ٿ� �ٹ�ȣ�� ���� ĭ�� ���� ����ϱ�");
			System.out.println("7. �ټ��� �Է¹޾�, �ﰢ�� ������� ��ǥ���� ����ϱ�(���:�����ﰢ��, ����:���ﰢ��)");
			System.out.println("8. ������ 2�ܺ��� 9�ܱ��� ����ϱ�");
			System.out.println("9. ���� �޴��� ����");
			System.out.print("�޴� ���� : ");
			no = CONSOLE.nextInt();
			
			switch(no)
			{
			case 1:	fs.sum1To10(); break;
			case 2:	fs.sumEven1To100(); break;
			case 3:	fs.oneGugudan(); break;
			case 4:	fs.sumMinToMax(); break;
			case 5:	fs.printStar(); break;
			case 6:	fs.printNumberStar(); break;
			case 7:	fs.printTriangleStar(); break;
			case 8:	fs.guguDan(); break;
			case 9:	System.out.println("���� �޴��� ���ư��ϴ�.");
				return;	//���� �޴��� �ǵ��ư�.
			default:
				System.out.println("�߸��� �޴���ȣ �Դϴ�. �ٽ��Է��ϼ���.");
				break;
			}
		} while(no != 9);
	}

	public static void subWhileMenu(){
		int no = 0;
		WhileSample ws = new WhileSample();
		
		do {
			System.out.println("*** while�� �׽�Ʈ �θ޴� ***");
			System.out.println("1. ���� �ϳ� �Է¹޾�, �� ������ �����ڵ� ��� �ݺ�('0' �ԷµǸ� �ݺ�����)");
			System.out.println("2. 1~100���� �������� �հ� ����ϱ�(while ������ �ۼ�)");
			System.out.println("3. 1~100������ ������ ������ �߻�����, ���� �˾Ƹ��߱�");
			System.out.println("4. ���ڿ��� �Է¹޾�, ���� ���� �˾Ƴ��� ����ϱ�");
			System.out.println("5. ���ڿ����� ���� �ϳ��� �Է¹޾�, ���ڿ��� ���ڰ� �� �� �ִ��� Ȯ���ϱ�");
			System.out.println("6. ���� �޴��� ����");
			System.out.print("�޴� ���� : ");
			
			switch(no)
			{
			case 1:	ws.printUniCode(); break;
			case 2:	ws.sum1To100(); break;
			case 3:	ws.numberGame(); break;
			case 4:	ws.countCharacter(); break;
			case 5:	ws.countInChar(); break;
			case 6:	System.out.println("���� �޴��� ���ư��ϴ�.");
				return;	//���� �޴��� �ǵ��ư�.
			default:
				System.out.println("�߸��� �޴���ȣ �Դϴ�. �ٽ��Է��ϼ���.");
				break;
			}
			
		}while(no != 6);
	}
	
	public static void subDoWhileMenu(){
		int no = 0;
		DoWhileSample dws = new DoWhileSample();
		
		do {
			System.out.println("*** do~while�� �׽�Ʈ �θ޴� ***");
			System.out.println("1. ���ڿ��� �Է¹޾�, ���� ���̿� '-' �����־� ����ϱ�");
			System.out.println("2. ����ŷ �޴� �ֹ� �׽�Ʈ");
			System.out.println("3. ���ڿ� �Է¹޾�, \"��� ���� �����ڴ�\"/\"������ �ƴϴ�.\" ����ϱ�");
			System.out.println("4. ���� �޴��� ����");
			System.out.print("�޴� ���� : ");
				
			switch(no)
			{
			case 1:	dws.addDashToken(); break;
			case 2:	dws.burgerKingMenu(); break;
			case 3:	dws.isStringAlphabet(); break;
			case 4:	System.out.println("���� �޴��� ���ư��ϴ�.");
				return;	//���� �޴��� �ǵ��ư�.
			default:
				System.out.println("�߸��� �޴���ȣ �Դϴ�. �ٽ��Է��ϼ���.");
				break;
			}
		}while(no != 4);
	}
	
	public static void subBreakMenu(){
		int no = 0;
		BreakSample bs = new BreakSample();
		
		do {
			System.out.println("*** break�� �׽�Ʈ �θ޴� ***");
			System.out.println("1. 1~100���� �������� �հ� ����ϱ�(break�� ���)");
			System.out.println("2. ������ 1��~9�ܱ��� ����ϵ�, * 5 ��꿡�� �ݺ��� ������(break �̸� ���)");
			System.out.println("3. ���� �޴��� ����");
			System.out.print("�޴� ���� : "); 
			switch(no)
			{
			case 1:	bs.sumBreak(); break;
			case 2:	bs.guguDanBreak(); break;
			case 3:	System.out.println("���� �޴��� ���ư��ϴ�.");
				return;	//���� �޴��� �ǵ��ư�.
			default:
				System.out.println("�߸��� �޴���ȣ �Դϴ�. �ٽ��Է��ϼ���.");
				break;
			}
		} while(no != 3);
	}
	
	public static void subContinueMenu(){
		int no = 0;
		ContinueSample cs = new ContinueSample();
		
		do {
			System.out.println("*** continue�� �׽�Ʈ �θ޴� ***");
			System.out.println("1. 1~100������ ���� �� 3�� ����� �� �������� �հ� ����ϱ�");
			System.out.println("2. 3�� 5���� �࿭�� ����ϵ�, 1�� 3������ 1�� 5������ �����ϰ� ����ϱ�");
			System.out.println("3. ���� �޴��� ����");
			System.out.print("�޴� ���� : "); 
			switch(no)
			{
			case 1: cs.sumJumpThree(); break;
			case 2:	cs.rowColJump(); break;
			case 3:	System.out.println("���� �޴��� ���ư��ϴ�.");
				return;	//���� �޴��� �ǵ��ư�.
			default:
				System.out.println("�߸��� �޴���ȣ �Դϴ�. �ٽ��Է��ϼ���.");
				break;
			}
		}while(no != 3);
	}
	
	public static void subStaticMethodMenu(){
		int no = 0;
		StaticMethodSample sms = new StaticMethodSample();
		
		do {
			System.out.println("*** static �޼ҵ� ��� �׽�Ʈ �θ޴� ***");
			System.out.println("1. Math Ŭ������ ������ ���ϴ� �޼ҵ� : 1~45������ ������ ���� ���");
			System.out.println("2. Math Ŭ������ �Ǽ����� ���� ���밪 ���ϴ� �޼ҵ� : -12.77 ���밪 ����ϱ�");
			System.out.println("3. Math Ŭ������ �� ������ ū�� ���ϴ� �޼ҵ� : 120, 54 �� ū�� ����ϱ�");
			System.out.println("4. ���� �޴��� ����");
			System.out.print("�޴� ���� : "); 
				
			switch(no)
			{
			case 1:	sms.testMathRandom(); break;
			case 2:	sms.testMathAbs(); break;
			case 3:	sms.testMathMax(); break;
			case 4:	System.out.println("���� �޴��� ���ư��ϴ�.");
				return;	//���� �޴��� �ǵ��ư�.
			default:
				System.out.println("�߸��� �޴���ȣ �Դϴ�. �ٽ��Է��ϼ���.");
				break;
			}
		}while(no != 4);
	}
	
	public static void subNonStaticMethodMenu(){
		int no = 0;
		NonStaticMethodSample nsms = new NonStaticMethodSample();
		
		do {
			System.out.println("*** non-static �޼ҵ� ��� �׽�Ʈ �θ޴� ***");
			System.out.println("1. Scanner Ŭ���� ��� : �ڷ��� �������� �� �Է¹޾� ����ϱ�");
			System.out.println("2. Date Ŭ���� ��� : ���� ��¥, ���� �ð� ���� ����ϱ�");
			System.out.println("3. Random Ŭ���� ��� : ������ �Ǽ��� ���� ���� ����ϱ�");
			System.out.println("4. ���� �޴��� ����");
			System.out.println("�޴� ���� :"); 
	
			switch(no)
			{
			case 1:	nsms.testScanner(); break;
			case 2:	nsms.testDate(); break;
			case 3:	nsms.testRandom(); break;
			case 4:	System.out.println("���� �޴��� ���ư��ϴ�.");
				return;	//���� �޴��� �ǵ��ư�.
			default:
				System.out.println("�߸��� �޴���ȣ �Դϴ�. �ٽ��Է��ϼ���.");
				break;
			}
		}while(no != 4);
	}
}
