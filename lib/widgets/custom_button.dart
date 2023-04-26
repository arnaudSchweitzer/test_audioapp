import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  final List<double> playbackSpeeds;
  final double value;
  final ValueChanged<double>? onChanged;

  const CustomDropdownButton({
    Key? key,
    required this.playbackSpeeds,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isOpen = !_isOpen;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${widget.value}x',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    _isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          if (_isOpen)
            Column(
              children: widget.playbackSpeeds.map((speed) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _isOpen = false;
                    });
                    if (widget.onChanged != null) {
                      widget.onChanged!(speed);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    color: speed == widget.value ? Colors.grey[800] : null,
                    child: Text(
                      '$speed' + 'x',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
        ],
      ),
    );
  }
}
