import Foundation

public struct ActivityResponse: Equatable, Decodable {
  public var activity: [ActivitySummary]
}

public struct ActivityRawResponse: Equatable, Decodable {
  public var activity: [AnyDecodable]
}

public struct HeartRate: Equatable, Decodable { 
  public var avg_bpm: Double?
  public var min_bpm: Double?
  public var max_bpm: Double? 
  public var resting_bpm: Double?
}

public struct ActivitySummary: Equatable, Decodable {
  public var id: UUID
  public var calendarDate: String
  public var caloriesTotal: Double?
  public var caloriesActive: Double?
  public var steps: Int?
  public var distance: Double?
  public var low: Double?
  public var medium: Double?
  public var high: Double?
  public var source: Source
  public var heart_rate: HeartRate?
  public var floorsClimbed: Int?
  public var timezoneOffset: Int?
}
