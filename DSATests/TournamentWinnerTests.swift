//
//  TournamentWinnerTests.swift
//  DSATests
//
//  Created by Sidharth J Dev on 17/08/23.
//

import XCTest
@testable import DSA

final class TournamentWinnerTests: XCTestCase {
    
    var program: TournamentWinner!
    
    override func setUp() {
        super.setUp()
        program = TournamentWinner()
    }
    
    override func tearDown() {
        program = nil
        super.tearDown()
    }
    
    
    
    func testHomeTeamWinning() {
        let competitions = [["TeamA", "TeamB"], ["TeamA", "TeamC"]]
        let results = [program.HOME_TEAM_WON, program.HOME_TEAM_WON]
        XCTAssertEqual(program.tournamentWinner(competitions, results), "TeamA")
    }
    

    
    func testDifferentTeamWins() {
        let competitions = [["TeamA", "TeamB"], ["TeamB", "TeamC"], ["TeamA", "TeamC"]]
        let results = [program.HOME_TEAM_WON, 0, 0]
        XCTAssertEqual(program.tournamentWinner(competitions, results), "TeamC")
    }
    
    func testNoCompetitions() {
        let competitions: [[String]] = []
        let results: [Int] = []
        XCTAssertEqual(program.tournamentWinner(competitions, results), "")
    }
    
    func testMismatchInResultsAndCompetitions() {
        let competitions = [["TeamA", "TeamB"]]
        let results: [Int] = []
        XCTAssertEqual(program.tournamentWinner(competitions, results), "")
    }
   
}
