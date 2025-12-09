declare module '@apiverve/goldprice' {
  export interface goldpriceOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface goldpriceResponse {
    status: string;
    error: string | null;
    data: GoldPriceData;
    code?: number;
  }


  interface GoldPriceData {
      currency:    string;
      gram:        number;
      kilogram:    number;
      ounce:       number;
      lastUpdated: number;
  }

  export default class goldpriceWrapper {
    constructor(options: goldpriceOptions);

    execute(callback: (error: any, data: goldpriceResponse | null) => void): Promise<goldpriceResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: goldpriceResponse | null) => void): Promise<goldpriceResponse>;
    execute(query?: Record<string, any>): Promise<goldpriceResponse>;
  }
}
