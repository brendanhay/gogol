{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.CloudNetworkPerformanceMonitoring.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.CloudNetworkPerformanceMonitoring.Types.Product where

import           Network.Google.CloudNetworkPerformanceMonitoring.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'aggregatedStats' smart constructor.
newtype AggregatedStats = AggregatedStats
    { _asStats :: Maybe [Maybe Stats]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AggregatedStats' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asStats'
aggregatedStats
    :: AggregatedStats
aggregatedStats =
    AggregatedStats
    { _asStats = Nothing
    }

asStats :: Lens' AggregatedStats [Maybe Stats]
asStats
  = lens _asStats (\ s a -> s{_asStats = a}) . _Default
      . _Coerce

--
-- /See:/ 'aggregatedStatsReply' smart constructor.
newtype AggregatedStatsReply = AggregatedStatsReply
    { _asrTestValue :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AggregatedStatsReply' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrTestValue'
aggregatedStatsReply
    :: AggregatedStatsReply
aggregatedStatsReply =
    AggregatedStatsReply
    { _asrTestValue = Nothing
    }

asrTestValue :: Lens' AggregatedStatsReply (Maybe Text)
asrTestValue
  = lens _asrTestValue (\ s a -> s{_asrTestValue = a})

--
-- /See:/ 'doubleValue' smart constructor.
data DoubleValue = DoubleValue
    { _dvValue :: !(Maybe Float)
    , _dvLabel :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    DoubleValue
    { _dvValue = Nothing
    , _dvLabel = Nothing
    }

dvValue :: Lens' DoubleValue (Maybe Float)
dvValue = lens _dvValue (\ s a -> s{_dvValue = a})

dvLabel :: Lens' DoubleValue (Maybe Text)
dvLabel = lens _dvLabel (\ s a -> s{_dvLabel = a})

--
-- /See:/ 'intValue' smart constructor.
data IntValue = IntValue
    { _ivValue :: !(Maybe Int64)
    , _ivLabel :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    IntValue
    { _ivValue = Nothing
    , _ivLabel = Nothing
    }

ivValue :: Lens' IntValue (Maybe Int64)
ivValue = lens _ivValue (\ s a -> s{_ivValue = a})

ivLabel :: Lens' IntValue (Maybe Text)
ivLabel = lens _ivLabel (\ s a -> s{_ivLabel = a})

--
-- /See:/ 'stats' smart constructor.
data Stats = Stats
    { _sTime         :: !(Maybe Double)
    , _sDoubleValues :: !(Maybe [Maybe DoubleValue])
    , _sStringValues :: !(Maybe [Maybe StringValue])
    , _sIntValues    :: !(Maybe [Maybe IntValue])
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    Stats
    { _sTime = Nothing
    , _sDoubleValues = Nothing
    , _sStringValues = Nothing
    , _sIntValues = Nothing
    }

sTime :: Lens' Stats (Maybe Double)
sTime = lens _sTime (\ s a -> s{_sTime = a})

sDoubleValues :: Lens' Stats [Maybe DoubleValue]
sDoubleValues
  = lens _sDoubleValues
      (\ s a -> s{_sDoubleValues = a})
      . _Default
      . _Coerce

sStringValues :: Lens' Stats [Maybe StringValue]
sStringValues
  = lens _sStringValues
      (\ s a -> s{_sStringValues = a})
      . _Default
      . _Coerce

sIntValues :: Lens' Stats [Maybe IntValue]
sIntValues
  = lens _sIntValues (\ s a -> s{_sIntValues = a}) .
      _Default
      . _Coerce

--
-- /See:/ 'statsReply' smart constructor.
newtype StatsReply = StatsReply
    { _srTestValue :: Maybe Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'StatsReply' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srTestValue'
statsReply
    :: StatsReply
statsReply =
    StatsReply
    { _srTestValue = Nothing
    }

srTestValue :: Lens' StatsReply (Maybe Text)
srTestValue
  = lens _srTestValue (\ s a -> s{_srTestValue = a})

--
-- /See:/ 'stringValue' smart constructor.
data StringValue = StringValue
    { _svValue :: !(Maybe Text)
    , _svLabel :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
    StringValue
    { _svValue = Nothing
    , _svLabel = Nothing
    }

svValue :: Lens' StringValue (Maybe Text)
svValue = lens _svValue (\ s a -> s{_svValue = a})

svLabel :: Lens' StringValue (Maybe Text)
svLabel = lens _svLabel (\ s a -> s{_svLabel = a})
