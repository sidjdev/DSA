//
//  TournamentWinner.swift
//  DSA
//
//  Created by Sidharth J Dev on 17/08/23.
//

import Foundation

class TournamentWinner {
    let HOME_TEAM_WON = 1
    
    func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {
        // Write your code here.
        guard results.count == competitions.count else {
            return ""
        }
        var pointCount: [String : Int] = [:]

        for (index, competition) in competitions.enumerated() {
            if results[index] != HOME_TEAM_WON {
                if pointCount[competition[1]] == nil {
                    pointCount[competition[1]] = 1
                } else {
                    pointCount[competition[1]]! += 3
                }
            } else if results[index] == HOME_TEAM_WON {
                if pointCount[competition[0]] == nil {
                    pointCount[competition[0]] = 1
                } else {
                    pointCount[competition[0]]! += 3
                }
            }
        }
        if let maxPair = pointCount.max(by: { a, b in a.value < b.value }) {
            return maxPair.key
        } else {
            return ""
        }
    }
    
    
    func tournamentWinnerSolutionTwo(_ competitions: [[String]], _ results: [Int]) -> String {
        // Write your code here.
        guard results.count == competitions.count else {
            return ""
        }
        var pointCount: [String : Int] = [:]
        
        for (index, competition) in competitions.enumerated() {
            let winningTeam = results[index] == HOME_TEAM_WON ? competition[0] : competition[1]
            pointCount[winningTeam, default: 0] += 3
        }
        
        return pointCount.max { $0.value < $1.value }?.key ?? ""
    }
}
