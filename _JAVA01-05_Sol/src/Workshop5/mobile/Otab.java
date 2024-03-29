package Workshop5.mobile;

public class Otab extends Mobile {

	public Otab(String mobileName, int batterySize, String osType) {
		super(mobileName, batterySize, osType);
	}

	@Override
	public int operate(int time) {
		setBatterySize(getBatterySize() - time*12);
		return getBatterySize();
	}

	@Override
	public int charge(int time) {
		setBatterySize(getBatterySize() + time*8);
		return getBatterySize();
	}
	
	@Override
	public void showInfo() {
		System.out.println(getMobileName()+"\t"+getBatterySize()+"\t"+getOsType());
	}
}
