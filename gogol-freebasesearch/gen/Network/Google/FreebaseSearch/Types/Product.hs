{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
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
-- /See:/ 'reconcileGetWarningItem' smart constructor.
data ReconcileGetWarningItem = ReconcileGetWarningItem
    { _rgwiLocation :: !(Maybe Text)
    , _rgwiReason   :: !(Maybe Text)
    , _rgwiMessage  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReconcileGetWarningItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgwiLocation'
--
-- * 'rgwiReason'
--
-- * 'rgwiMessage'
reconcileGetWarningItem
    :: ReconcileGetWarningItem
reconcileGetWarningItem =
    ReconcileGetWarningItem
    { _rgwiLocation = Nothing
    , _rgwiReason = Nothing
    , _rgwiMessage = Nothing
    }

-- | Location of warning in the request e.g. invalid predicate.
rgwiLocation :: Lens' ReconcileGetWarningItem (Maybe Text)
rgwiLocation
  = lens _rgwiLocation (\ s a -> s{_rgwiLocation = a})

-- | Code for identifying classes of warnings.
rgwiReason :: Lens' ReconcileGetWarningItem (Maybe Text)
rgwiReason
  = lens _rgwiReason (\ s a -> s{_rgwiReason = a})

-- | Warning message to display to the user.
rgwiMessage :: Lens' ReconcileGetWarningItem (Maybe Text)
rgwiMessage
  = lens _rgwiMessage (\ s a -> s{_rgwiMessage = a})

instance FromJSON ReconcileGetWarningItem where
        parseJSON
          = withObject "ReconcileGetWarningItem"
              (\ o ->
                 ReconcileGetWarningItem <$>
                   (o .:? "location") <*> (o .:? "reason") <*>
                     (o .:? "message"))

instance ToJSON ReconcileGetWarningItem where
        toJSON ReconcileGetWarningItem{..}
          = object
              (catMaybes
                 [("location" .=) <$> _rgwiLocation,
                  ("reason" .=) <$> _rgwiReason,
                  ("message" .=) <$> _rgwiMessage])

-- | Server costs for reconciling.
--
-- /See:/ 'reconcileGetCosts' smart constructor.
data ReconcileGetCosts = ReconcileGetCosts
    { _rgcHits :: !(Maybe (JSONText Int32))
    , _rgcMs   :: !(Maybe (JSONText Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReconcileGetCosts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgcHits'
--
-- * 'rgcMs'
reconcileGetCosts
    :: ReconcileGetCosts
reconcileGetCosts =
    ReconcileGetCosts
    { _rgcHits = Nothing
    , _rgcMs = Nothing
    }

-- | Total number of hits found.
rgcHits :: Lens' ReconcileGetCosts (Maybe Int32)
rgcHits
  = lens _rgcHits (\ s a -> s{_rgcHits = a}) .
      mapping _Coerce

-- | Total milliseconds spent.
rgcMs :: Lens' ReconcileGetCosts (Maybe Int32)
rgcMs
  = lens _rgcMs (\ s a -> s{_rgcMs = a}) .
      mapping _Coerce

instance FromJSON ReconcileGetCosts where
        parseJSON
          = withObject "ReconcileGetCosts"
              (\ o ->
                 ReconcileGetCosts <$>
                   (o .:? "hits") <*> (o .:? "ms"))

instance ToJSON ReconcileGetCosts where
        toJSON ReconcileGetCosts{..}
          = object
              (catMaybes
                 [("hits" .=) <$> _rgcHits, ("ms" .=) <$> _rgcMs])

--
-- /See:/ 'reconcileGet' smart constructor.
data ReconcileGet = ReconcileGet
    { _rgCandidate :: !(Maybe [ReconcileCandidate])
    , _rgCosts     :: !(Maybe ReconcileGetCosts)
    , _rgWarning   :: !(Maybe [ReconcileGetWarningItem])
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
rgCosts :: Lens' ReconcileGet (Maybe ReconcileGetCosts)
rgCosts = lens _rgCosts (\ s a -> s{_rgCosts = a})

-- | If filled, then there were recoverable problems that affected the
-- request. For example, some of the properties were ignored because they
-- either are not valid Freebase predicates or are not indexed for
-- reconciliation. The candidates returned should be considered valid
-- results, with the caveat that sections of the request were ignored as
-- specified by the warning text.
rgWarning :: Lens' ReconcileGet [ReconcileGetWarningItem]
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
-- /See:/ 'reconcileCandidateNotable' smart constructor.
data ReconcileCandidateNotable = ReconcileCandidateNotable
    { _rcnName :: !(Maybe Text)
    , _rcnId   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReconcileCandidateNotable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rcnName'
--
-- * 'rcnId'
reconcileCandidateNotable
    :: ReconcileCandidateNotable
reconcileCandidateNotable =
    ReconcileCandidateNotable
    { _rcnName = Nothing
    , _rcnId = Nothing
    }

-- | Name of notable category in specified language.
rcnName :: Lens' ReconcileCandidateNotable (Maybe Text)
rcnName = lens _rcnName (\ s a -> s{_rcnName = a})

-- | MID of notable category.
rcnId :: Lens' ReconcileCandidateNotable (Maybe Text)
rcnId = lens _rcnId (\ s a -> s{_rcnId = a})

instance FromJSON ReconcileCandidateNotable where
        parseJSON
          = withObject "ReconcileCandidateNotable"
              (\ o ->
                 ReconcileCandidateNotable <$>
                   (o .:? "name") <*> (o .:? "id"))

instance ToJSON ReconcileCandidateNotable where
        toJSON ReconcileCandidateNotable{..}
          = object
              (catMaybes
                 [("name" .=) <$> _rcnName, ("id" .=) <$> _rcnId])

--
-- /See:/ 'reconcileCandidate' smart constructor.
data ReconcileCandidate = ReconcileCandidate
    { _rcLang       :: !(Maybe Text)
    , _rcConfidence :: !(Maybe (JSONText Float))
    , _rcName       :: !(Maybe Text)
    , _rcNotable    :: !(Maybe ReconcileCandidateNotable)
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
      . mapping _Coerce

-- | Freebase name of matching entity in specified language.
rcName :: Lens' ReconcileCandidate (Maybe Text)
rcName = lens _rcName (\ s a -> s{_rcName = a})

-- | Type or profession the candidate is notable for.
rcNotable :: Lens' ReconcileCandidate (Maybe ReconcileCandidateNotable)
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
