from kafka import KafkaConsumer
import json

consumer = KafkaConsumer('Topic1',
                         bootstrap_servers=['broker:29092'],
           value_deserializer=lambda m: m.decode('ascii'))

for message in consumer:
    print(message.topic)
    print(message.partition)
    print(message.offset)
    print(message.key)