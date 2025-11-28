import 'package:flutter/material.dart';

class MindfulResourcesCard extends StatelessWidget {
  final VoidCallback? onPressed;

  const MindfulResourcesCard({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('avatar.png'),
                radius: 24,
              ),
              SizedBox(height: 12),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Color(0xFF926247).withValues(alpha: .1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Mental Health',
                  style: TextStyle(
                    color: Color(0xFF926247),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Will meditation help you get out from the rat race?',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xFF4F3422),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Image.asset('icons/seeing.png'),
                  SizedBox(width: 4),
                  Text(
                    '5.241',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  SizedBox(width: 12),
                  Icon(Icons.favorite, color: Color(0xFFED7E1C), size: 16),
                  SizedBox(width: 4),
                  Text(
                    '318',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                  SizedBox(width: 12),
                  Icon(Icons.comment_rounded, color: Color(0xFF4F3422).withValues(alpha: .4), size: 16),
                  SizedBox(width: 4),
                  Text(
                    '22',
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
