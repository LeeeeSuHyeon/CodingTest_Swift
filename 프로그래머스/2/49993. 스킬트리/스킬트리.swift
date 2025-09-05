import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {

    func isAvailableSkillTree(_ skill: String, _ skillTree: String) -> Bool {
        let filteredSkillTree = skillTree.filter { skill.contains($0) }
        return skill.starts(with: filteredSkillTree)
    }
    
    return skill_trees.filter { isAvailableSkillTree(skill, $0) }.count
    
}

/*

1. skillTree에서 skill에 없는 글자는 제거
2. 남은 skillTree가 모두 없어질 때까지 skill과 비교

*/