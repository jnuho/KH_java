package common.message;

import javax.websocket.EncodeException;
import javax.websocket.Encoder;
import javax.websocket.EndpointConfig;

import com.google.gson.Gson;

public class MessageEncoder implements Encoder.Text<Message>{

  @Override
  public void destroy() {
    // TODO Auto-generated method stub
  }

  @Override
  public void init(EndpointConfig arg0) {
    // TODO Auto-generated method stub
  }

  @Override
  public String encode(Message object) throws EncodeException {
    // TODO Auto-generated method stub
    return new Gson().toJson(object);
    //Gson()이 JSONObject.put 등 을 자동으로 처리함
  }
  
}
