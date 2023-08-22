package com.mvc.study.domain.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.mvc.study.domain.domain.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class MemberRepository {
	private Map<Integer, Member> list = new HashMap<>();
	private int seq = 0;
	
	public void saveMember(Member member) {
		member.setSeq(++seq);
		log.info("member = {}", member);
		list.put(member.getSeq(), member);
	}
	
	public Member findMemberSeq(int seq) {
		return list.get(seq); 
	}
	
	public Optional<Member> findMemberId(String id) {
		return findMemberId(id).stream()
				.filter(m -> m.getId().equals(id))
				.findFirst();
	}
	
	public List<Member> findAllMember() {
		return new ArrayList<>(list.values());
	}
}
