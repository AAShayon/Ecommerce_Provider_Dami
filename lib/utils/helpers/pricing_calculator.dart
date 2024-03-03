class SPricingCalculator {
  ///--calculate price based on tax and shipping--\\\

  static double calculateTotalPrice(double productPrice,String location){
    double taxRate=getTaxRateForLocation(location);
    double taxtAmount=productPrice * taxRate;

    double shippingCost=getShippingCost(location);
    double totalPrice=productPrice + taxtAmount + shippingCost;
    return totalPrice;
  }

  ///--Calculate Shipping cost

static String calculateShippingCost(double productPrice,String location){
    double shippingCost=getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
}
///---calculate tax

static String calculateTax(double productPrice,String location){
    double taxRate=getTaxRateForLocation(location);
    double taxAmount=productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
}
static double getTaxRateForLocation(String location){
    //tax rate for the specific loaction or are from a tax rate database pr api.
  //retrun the approprite tax rate
  return 0.10;
}
static double getShippingCost(String location){
    //shipping cost for the given location using a shipping rate api
  //calculate the shipping cost based on various factors like distances,weight,etc
  return 5.00;
}

///-Sum all cart values and return total amount

    // static double calculateCartTotal(CartModel cart){
    // return cart.items.map((e)=>e.price).fold(0,(previousPrice,currentPrice)=>previousPrice +(currentPrice??0));
    // }



}