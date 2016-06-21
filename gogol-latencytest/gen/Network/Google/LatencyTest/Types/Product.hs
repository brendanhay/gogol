{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.LatencyTest.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.LatencyTest.Types.Product where

import           Network.Google.LatencyTest.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'intValue' smart constructor.
data IntValue = IntValue'
    { _ivValue :: !(Maybe (Textual Int64))
    , _ivLabel :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'IntValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ivValue'
--
-- * 'ivLabel'
intValue
    :: IntValue
intValue =
    IntValue'
    { _ivValue = Nothing
    , _ivLabel = Nothing
    }

ivValue :: Lens' IntValue (Maybe Int64)
ivValue
  = lens _ivValue (\ s a -> s{_ivValue = a}) .
      mapping _Coerce

ivLabel :: Lens' IntValue (Maybe Text)
ivLabel = lens _ivLabel (\ s a -> s{_ivLabel = a})

instance FromJSON IntValue where
        parseJSON
          = withObject "IntValue"
              (\ o ->
                 IntValue' <$> (o .:? "value") <*> (o .:? "label"))

instance ToJSON IntValue where
        toJSON IntValue'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _ivValue,
                  ("label" .=) <$> _ivLabel])

--
-- /See:/ 'doubleValue' smart constructor.
data DoubleValue = DoubleValue'
    { _dvValue :: !(Maybe (Textual Double))
    , _dvLabel :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DoubleValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvValue'
--
-- * 'dvLabel'
doubleValue
    :: DoubleValue
doubleValue =
    DoubleValue'
    { _dvValue = Nothing
    , _dvLabel = Nothing
    }

dvValue :: Lens' DoubleValue (Maybe Double)
dvValue
  = lens _dvValue (\ s a -> s{_dvValue = a}) .
      mapping _Coerce

dvLabel :: Lens' DoubleValue (Maybe Text)
dvLabel = lens _dvLabel (\ s a -> s{_dvLabel = a})

instance FromJSON DoubleValue where
        parseJSON
          = withObject "DoubleValue"
              (\ o ->
                 DoubleValue' <$> (o .:? "value") <*> (o .:? "label"))

instance ToJSON DoubleValue where
        toJSON DoubleValue'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _dvValue,
                  ("label" .=) <$> _dvLabel])

--
-- /See:/ 'stringValue' smart constructor.
data StringValue = StringValue'
    { _svValue :: !(Maybe Text)
    , _svLabel :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StringValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'svValue'
--
-- * 'svLabel'
stringValue
    :: StringValue
stringValue =
    StringValue'
    { _svValue = Nothing
    , _svLabel = Nothing
    }

svValue :: Lens' StringValue (Maybe Text)
svValue = lens _svValue (\ s a -> s{_svValue = a})

svLabel :: Lens' StringValue (Maybe Text)
svLabel = lens _svLabel (\ s a -> s{_svLabel = a})

instance FromJSON StringValue where
        parseJSON
          = withObject "StringValue"
              (\ o ->
                 StringValue' <$> (o .:? "value") <*> (o .:? "label"))

instance ToJSON StringValue where
        toJSON StringValue'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _svValue,
                  ("label" .=) <$> _svLabel])

--
-- /See:/ 'aggregatedStatsReply' smart constructor.
newtype AggregatedStatsReply = AggregatedStatsReply'
    { _asrTestValue :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AggregatedStatsReply' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrTestValue'
aggregatedStatsReply
    :: AggregatedStatsReply
aggregatedStatsReply =
    AggregatedStatsReply'
    { _asrTestValue = Nothing
    }

asrTestValue :: Lens' AggregatedStatsReply (Maybe Text)
asrTestValue
  = lens _asrTestValue (\ s a -> s{_asrTestValue = a})

instance FromJSON AggregatedStatsReply where
        parseJSON
          = withObject "AggregatedStatsReply"
              (\ o ->
                 AggregatedStatsReply' <$> (o .:? "testValue"))

instance ToJSON AggregatedStatsReply where
        toJSON AggregatedStatsReply'{..}
          = object
              (catMaybes [("testValue" .=) <$> _asrTestValue])

--
-- /See:/ 'stats' smart constructor.
data Stats = Stats'
    { _sTime         :: !(Maybe (Textual Double))
    , _sDoubleValues :: !(Maybe [DoubleValue])
    , _sStringValues :: !(Maybe [StringValue])
    , _sIntValues    :: !(Maybe [IntValue])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Stats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sTime'
--
-- * 'sDoubleValues'
--
-- * 'sStringValues'
--
-- * 'sIntValues'
stats
    :: Stats
stats =
    Stats'
    { _sTime = Nothing
    , _sDoubleValues = Nothing
    , _sStringValues = Nothing
    , _sIntValues = Nothing
    }

sTime :: Lens' Stats (Maybe Double)
sTime
  = lens _sTime (\ s a -> s{_sTime = a}) .
      mapping _Coerce

sDoubleValues :: Lens' Stats [DoubleValue]
sDoubleValues
  = lens _sDoubleValues
      (\ s a -> s{_sDoubleValues = a})
      . _Default
      . _Coerce

sStringValues :: Lens' Stats [StringValue]
sStringValues
  = lens _sStringValues
      (\ s a -> s{_sStringValues = a})
      . _Default
      . _Coerce

sIntValues :: Lens' Stats [IntValue]
sIntValues
  = lens _sIntValues (\ s a -> s{_sIntValues = a}) .
      _Default
      . _Coerce

instance FromJSON Stats where
        parseJSON
          = withObject "Stats"
              (\ o ->
                 Stats' <$>
                   (o .:? "time") <*> (o .:? "doubleValues" .!= mempty)
                     <*> (o .:? "stringValues" .!= mempty)
                     <*> (o .:? "intValues" .!= mempty))

instance ToJSON Stats where
        toJSON Stats'{..}
          = object
              (catMaybes
                 [("time" .=) <$> _sTime,
                  ("doubleValues" .=) <$> _sDoubleValues,
                  ("stringValues" .=) <$> _sStringValues,
                  ("intValues" .=) <$> _sIntValues])

--
-- /See:/ 'aggregatedStats' smart constructor.
newtype AggregatedStats = AggregatedStats'
    { _asStats :: Maybe [Stats]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AggregatedStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asStats'
aggregatedStats
    :: AggregatedStats
aggregatedStats =
    AggregatedStats'
    { _asStats = Nothing
    }

asStats :: Lens' AggregatedStats [Stats]
asStats
  = lens _asStats (\ s a -> s{_asStats = a}) . _Default
      . _Coerce

instance FromJSON AggregatedStats where
        parseJSON
          = withObject "AggregatedStats"
              (\ o ->
                 AggregatedStats' <$> (o .:? "stats" .!= mempty))

instance ToJSON AggregatedStats where
        toJSON AggregatedStats'{..}
          = object (catMaybes [("stats" .=) <$> _asStats])

--
-- /See:/ 'statsReply' smart constructor.
newtype StatsReply = StatsReply'
    { _srTestValue :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatsReply' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srTestValue'
statsReply
    :: StatsReply
statsReply =
    StatsReply'
    { _srTestValue = Nothing
    }

srTestValue :: Lens' StatsReply (Maybe Text)
srTestValue
  = lens _srTestValue (\ s a -> s{_srTestValue = a})

instance FromJSON StatsReply where
        parseJSON
          = withObject "StatsReply"
              (\ o -> StatsReply' <$> (o .:? "testValue"))

instance ToJSON StatsReply where
        toJSON StatsReply'{..}
          = object
              (catMaybes [("testValue" .=) <$> _srTestValue])
