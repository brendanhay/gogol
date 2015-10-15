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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingListShares.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one remarketing list share by remarketing list ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingRemarketingListSharesGet@.
module Network.Google.Resource.DFAReporting.RemarketingListShares.Get
    (
    -- * REST Resource
      RemarketingListSharesGetResource

    -- * Creating a Request
    , remarketingListSharesGet'
    , RemarketingListSharesGet'

    -- * Request Lenses
    , rlsgProFileId
    , rlsgRemarketingListId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingRemarketingListSharesGet@ method which the
-- 'RemarketingListSharesGet'' request conforms to.
type RemarketingListSharesGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingListShares" :>
           Capture "remarketingListId" Int64 :>
             QueryParam "alt" AltJSON :>
               Get '[JSON] RemarketingListShare

-- | Gets one remarketing list share by remarketing list ID.
--
-- /See:/ 'remarketingListSharesGet'' smart constructor.
data RemarketingListSharesGet' = RemarketingListSharesGet'
    { _rlsgProFileId         :: !Int64
    , _rlsgRemarketingListId :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListSharesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlsgProFileId'
--
-- * 'rlsgRemarketingListId'
remarketingListSharesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'remarketingListId'
    -> RemarketingListSharesGet'
remarketingListSharesGet' pRlsgProFileId_ pRlsgRemarketingListId_ =
    RemarketingListSharesGet'
    { _rlsgProFileId = pRlsgProFileId_
    , _rlsgRemarketingListId = pRlsgRemarketingListId_
    }

-- | User profile ID associated with this request.
rlsgProFileId :: Lens' RemarketingListSharesGet' Int64
rlsgProFileId
  = lens _rlsgProFileId
      (\ s a -> s{_rlsgProFileId = a})

-- | Remarketing list ID.
rlsgRemarketingListId :: Lens' RemarketingListSharesGet' Int64
rlsgRemarketingListId
  = lens _rlsgRemarketingListId
      (\ s a -> s{_rlsgRemarketingListId = a})

instance GoogleRequest RemarketingListSharesGet'
         where
        type Rs RemarketingListSharesGet' =
             RemarketingListShare
        requestClient RemarketingListSharesGet'{..}
          = go _rlsgProFileId _rlsgRemarketingListId
              (Just AltJSON)
              dFAReporting
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListSharesGetResource)
                      mempty
