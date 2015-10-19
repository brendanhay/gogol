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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing remarketing list.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.remarketingLists.update@.
module Network.Google.Resource.DFAReporting.RemarketingLists.Update
    (
    -- * REST Resource
      RemarketingListsUpdateResource

    -- * Creating a Request
    , remarketingListsUpdate'
    , RemarketingListsUpdate'

    -- * Request Lenses
    , rluProFileId
    , rluPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.remarketingLists.update@ method which the
-- 'RemarketingListsUpdate'' request conforms to.
type RemarketingListsUpdateResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingLists" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] RemarketingList :>
               Put '[JSON] RemarketingList

-- | Updates an existing remarketing list.
--
-- /See:/ 'remarketingListsUpdate'' smart constructor.
data RemarketingListsUpdate' = RemarketingListsUpdate'
    { _rluProFileId :: !Int64
    , _rluPayload   :: !RemarketingList
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rluProFileId'
--
-- * 'rluPayload'
remarketingListsUpdate'
    :: Int64 -- ^ 'rluProFileId'
    -> RemarketingList -- ^ 'rluPayload'
    -> RemarketingListsUpdate'
remarketingListsUpdate' pRluProFileId_ pRluPayload_ =
    RemarketingListsUpdate'
    { _rluProFileId = pRluProFileId_
    , _rluPayload = pRluPayload_
    }

-- | User profile ID associated with this request.
rluProFileId :: Lens' RemarketingListsUpdate' Int64
rluProFileId
  = lens _rluProFileId (\ s a -> s{_rluProFileId = a})

-- | Multipart request metadata.
rluPayload :: Lens' RemarketingListsUpdate' RemarketingList
rluPayload
  = lens _rluPayload (\ s a -> s{_rluPayload = a})

instance GoogleRequest RemarketingListsUpdate' where
        type Rs RemarketingListsUpdate' = RemarketingList
        requestClient RemarketingListsUpdate'{..}
          = go _rluProFileId (Just AltJSON) _rluPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListsUpdateResource)
                      mempty
