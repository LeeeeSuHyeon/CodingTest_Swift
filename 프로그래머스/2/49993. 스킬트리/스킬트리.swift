import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    let skill = skill.map { $0 }

    func isAvailableSkillTree(_ skillTree: [Character]) -> Bool {
        var skill = skill
        var skillTree = skillTree
        var index = 0
        
        while index < skillTree.count {
            if skill[index] == skillTree[index] { 
                index += 1
            } else {
                return false
            }
        }
        
        return true
    }
    
    
    return skill_trees.map { skillTree in 
        skillTree.map { $0 }.filter { skill.contains($0) } 
    }.filter { isAvailableSkillTree($0) }.count
    
}

/*

1. skillTree에서 skill에 없는 글자는 제거
2. 남은 skillTree가 모두 없어질 때까지 skill과 비교

*/