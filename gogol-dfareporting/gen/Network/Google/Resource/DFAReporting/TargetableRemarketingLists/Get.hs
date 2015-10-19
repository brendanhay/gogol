{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.TargetableRemarketingLists.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one remarketing list by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.targetableRemarketingLists.get@.
module Network.Google.Resource.DFAReporting.TargetableRemarketingLists.Get
    (
    -- * REST Resource
      TargetableRemarketingListsGetResource

    -- * Creating a Request
    , targetableRemarketingListsGet'
    , TargetableRemarketingListsGet'

    -- * Request Lenses
    , trlgProFileId
    , trlgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.targetableRemarketingLists.get@ method which the
-- 'TargetableRemarketingListsGet'' request conforms to.
type TargetableRemarketingListsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "targetableRemarketingLists" :>
           Capture "id" Int64 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] TargetableRemarketingList

-- | Gets one remarketing list by ID.
--
-- /See:/ 'targetableRemarketingListsGet'' smart constructor.
data TargetableRemarketingListsGet' = TargetableRemarketingListsGet'
    { _trlgProFileId :: !Int64
    , _trlgId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetableRemarketingListsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'trlgProFileId'
--
-- * 'trlgId'
targetableRemarketingListsGet'
    :: Int64 -- ^ 'trlgProFileId'
    -> Int64 -- ^ 'trlgId'
    -> TargetableRemarketingListsGet'
targetableRemarketingListsGet' pTrlgProFileId_ pTrlgId_ =
    TargetableRemarketingListsGet'
    { _trlgProFileId = pTrlgProFileId_
    , _trlgId = pTrlgId_
    }

-- | User profile ID associated with this request.
trlgProFileId :: Lens' TargetableRemarketingListsGet' Int64
trlgProFileId
  = lens _trlgProFileId
      (\ s a -> s{_trlgProFileId = a})

-- | Remarketing list ID.
trlgId :: Lens' TargetableRemarketingListsGet' Int64
trlgId = lens _trlgId (\ s a -> s{_trlgId = a})

instance GoogleRequest TargetableRemarketingListsGet'
         where
        type Rs TargetableRemarketingListsGet' =
             TargetableRemarketingList
        requestClient TargetableRemarketingListsGet'{..}
          = go _trlgProFileId _trlgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy TargetableRemarketingListsGetResource)
                      mempty
