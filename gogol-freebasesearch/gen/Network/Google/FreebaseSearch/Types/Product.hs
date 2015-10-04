{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.FreebaseSearch.Types.Product
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.FreebaseSearch.Types.Product where

import           Network.Google.FreebaseSearch.Types.Sum
import           Network.Google.Prelude

--
-- /See:/ 'warningItem' smart constructor.
data WarningItem = WarningItem
    { _wiLocation :: !(Maybe Text)
    , _wiReason   :: !(Maybe Text)
    , _wiMessage  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WarningItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wiLocation'
--
-- * 'wiReason'
--
-- * 'wiMessage'
warningItem
    :: WarningItem
warningItem =
    WarningItem
    { _wiLocation = Nothing
    , _wiReason = Nothing
    , _wiMessage = Nothing
    }

-- | Location of warning in the request e.g. invalid predicate.
wiLocation :: Lens' WarningItem (Maybe Text)
wiLocation
  = lens _wiLocation (\ s a -> s{_wiLocation = a})

-- | Code for identifying classes of warnings.
wiReason :: Lens' WarningItem (Maybe Text)
wiReason = lens _wiReason (\ s a -> s{_wiReason = a})

-- | Warning message to display to the user.
wiMessage :: Lens' WarningItem (Maybe Text)
wiMessage
  = lens _wiMessage (\ s a -> s{_wiMessage = a})

instance FromJSON WarningItem where
        parseJSON
          = withObject "WarningItem"
              (\ o ->
                 WarningItem <$>
                   (o .:? "location") <*> (o .:? "reason") <*>
                     (o .:? "message"))

instance ToJSON WarningItem where
        toJSON WarningItem{..}
          = object
              (catMaybes
                 [("location" .=) <$> _wiLocation,
                  ("reason" .=) <$> _wiReason,
                  ("message" .=) <$> _wiMessage])

-- | Server costs for reconciling.
--
-- /See:/ 'costs' smart constructor.
data Costs = Costs
    { _cHits :: !(Maybe Int32)
    , _cMs   :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Costs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cHits'
--
-- * 'cMs'
costs
    :: Costs
costs =
    Costs
    { _cHits = Nothing
    , _cMs = Nothing
    }

-- | Total number of hits found.
cHits :: Lens' Costs (Maybe Int32)
cHits = lens _cHits (\ s a -> s{_cHits = a})

-- | Total milliseconds spent.
cMs :: Lens' Costs (Maybe Int32)
cMs = lens _cMs (\ s a -> s{_cMs = a})

instance FromJSON Costs where
        parseJSON
          = withObject "Costs"
              (\ o -> Costs <$> (o .:? "hits") <*> (o .:? "ms"))

instance ToJSON Costs where
        toJSON Costs{..}
          = object
              (catMaybes
                 [("hits" .=) <$> _cHits, ("ms" .=) <$> _cMs])

--
-- /See:/ 'reconcileGet' smart constructor.
data ReconcileGet = ReconcileGet
    { _rgCandidate :: !(Maybe [ReconcileCandidate])
    , _rgCosts     :: !(Maybe Costs)
    , _rgWarning   :: !(Maybe [WarningItem])
    , _rgMatch     :: !(Maybe ReconcileCandidate)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReconcileGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgCandidate'
--
-- * 'rgCosts'
--
-- * 'rgWarning'
--
-- * 'rgMatch'
reconcileGet
    :: ReconcileGet
reconcileGet =
    ReconcileGet
    { _rgCandidate = Nothing
    , _rgCosts = Nothing
    , _rgWarning = Nothing
    , _rgMatch = Nothing
    }

-- | If filled, then the listed candidates are potential matches, and such
-- should be evaluated by a more discerning algorithm or human. The matches
-- are ordered by confidence.
rgCandidate :: Lens' ReconcileGet [ReconcileCandidate]
rgCandidate
  = lens _rgCandidate (\ s a -> s{_rgCandidate = a}) .
      _Default
      . _Coerce

-- | Server costs for reconciling.
rgCosts :: Lens' ReconcileGet (Maybe Costs)
rgCosts = lens _rgCosts (\ s a -> s{_rgCosts = a})

-- | If filled, then there were recoverable problems that affected the
-- request. For example, some of the properties were ignored because they
-- either are not valid Freebase predicates or are not indexed for
-- reconciliation. The candidates returned should be considered valid
-- results, with the caveat that sections of the request were ignored as
-- specified by the warning text.
rgWarning :: Lens' ReconcileGet [WarningItem]
rgWarning
  = lens _rgWarning (\ s a -> s{_rgWarning = a}) .
      _Default
      . _Coerce

-- | If filled, this entity is guaranteed to match at requested confidence
-- probability (default 99%).
rgMatch :: Lens' ReconcileGet (Maybe ReconcileCandidate)
rgMatch = lens _rgMatch (\ s a -> s{_rgMatch = a})

instance FromJSON ReconcileGet where
        parseJSON
          = withObject "ReconcileGet"
              (\ o ->
                 ReconcileGet <$>
                   (o .:? "candidate" .!= mempty) <*> (o .:? "costs")
                     <*> (o .:? "warning" .!= mempty)
                     <*> (o .:? "match"))

instance ToJSON ReconcileGet where
        toJSON ReconcileGet{..}
          = object
              (catMaybes
                 [("candidate" .=) <$> _rgCandidate,
                  ("costs" .=) <$> _rgCosts,
                  ("warning" .=) <$> _rgWarning,
                  ("match" .=) <$> _rgMatch])

-- | Type or profession the candidate is notable for.
--
-- /See:/ 'notable' smart constructor.
data Notable = Notable
    { _nName :: !(Maybe Text)
    , _nId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Notable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'nName'
--
-- * 'nId'
notable
    :: Notable
notable =
    Notable
    { _nName = Nothing
    , _nId = Nothing
    }

-- | Name of notable category in specified language.
nName :: Lens' Notable (Maybe Text)
nName = lens _nName (\ s a -> s{_nName = a})

-- | MID of notable category.
nId :: Lens' Notable (Maybe Text)
nId = lens _nId (\ s a -> s{_nId = a})

instance FromJSON Notable where
        parseJSON
          = withObject "Notable"
              (\ o -> Notable <$> (o .:? "name") <*> (o .:? "id"))

instance ToJSON Notable where
        toJSON Notable{..}
          = object
              (catMaybes
                 [("name" .=) <$> _nName, ("id" .=) <$> _nId])

--
-- /See:/ 'reconcileCandidate' smart constructor.
data ReconcileCandidate = ReconcileCandidate
    { _rcLang       :: !(Maybe Text)
    , _rcConfidence :: !(Maybe Float)
    , _rcName       :: !(Maybe Text)
    , _rcNotable    :: !(Maybe Notable)
    , _rcMid        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReconcileCandidate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcLang'
--
-- * 'rcConfidence'
--
-- * 'rcName'
--
-- * 'rcNotable'
--
-- * 'rcMid'
reconcileCandidate
    :: ReconcileCandidate
reconcileCandidate =
    ReconcileCandidate
    { _rcLang = Nothing
    , _rcConfidence = Nothing
    , _rcName = Nothing
    , _rcNotable = Nothing
    , _rcMid = Nothing
    }

-- | Language code that candidate and notable names are displayed in.
rcLang :: Lens' ReconcileCandidate (Maybe Text)
rcLang = lens _rcLang (\ s a -> s{_rcLang = a})

-- | Percentage likelihood that this candidate is the unique matching entity.
-- Value will be between 0.0 and 1.0
rcConfidence :: Lens' ReconcileCandidate (Maybe Float)
rcConfidence
  = lens _rcConfidence (\ s a -> s{_rcConfidence = a})

-- | Freebase name of matching entity in specified language.
rcName :: Lens' ReconcileCandidate (Maybe Text)
rcName = lens _rcName (\ s a -> s{_rcName = a})

-- | Type or profession the candidate is notable for.
rcNotable :: Lens' ReconcileCandidate (Maybe Notable)
rcNotable
  = lens _rcNotable (\ s a -> s{_rcNotable = a})

-- | Freebase MID of candidate entity.
rcMid :: Lens' ReconcileCandidate (Maybe Text)
rcMid = lens _rcMid (\ s a -> s{_rcMid = a})

instance FromJSON ReconcileCandidate where
        parseJSON
          = withObject "ReconcileCandidate"
              (\ o ->
                 ReconcileCandidate <$>
                   (o .:? "lang") <*> (o .:? "confidence") <*>
                     (o .:? "name")
                     <*> (o .:? "notable")
                     <*> (o .:? "mid"))

instance ToJSON ReconcileCandidate where
        toJSON ReconcileCandidate{..}
          = object
              (catMaybes
                 [("lang" .=) <$> _rcLang,
                  ("confidence" .=) <$> _rcConfidence,
                  ("name" .=) <$> _rcName,
                  ("notable" .=) <$> _rcNotable,
                  ("mid" .=) <$> _rcMid])
