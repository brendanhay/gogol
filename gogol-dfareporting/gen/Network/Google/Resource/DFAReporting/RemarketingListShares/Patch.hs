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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingListShares.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing remarketing list share. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.remarketingListShares.patch@.
module Network.Google.Resource.DFAReporting.RemarketingListShares.Patch
    (
    -- * REST Resource
      RemarketingListSharesPatchResource

    -- * Creating a Request
    , remarketingListSharesPatch
    , RemarketingListSharesPatch

    -- * Request Lenses
    , rlspProFileId
    , rlspPayload
    , rlspRemarketingListId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.remarketingListShares.patch@ method which the
-- 'RemarketingListSharesPatch' request conforms to.
type RemarketingListSharesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "remarketingListShares" :>
           QueryParam "remarketingListId" Int64 :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] RemarketingListShare :>
                 Patch '[JSON] RemarketingListShare

-- | Updates an existing remarketing list share. This method supports patch
-- semantics.
--
-- /See:/ 'remarketingListSharesPatch' smart constructor.
data RemarketingListSharesPatch = RemarketingListSharesPatch
    { _rlspProFileId         :: !Int64
    , _rlspPayload           :: !RemarketingListShare
    , _rlspRemarketingListId :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListSharesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlspProFileId'
--
-- * 'rlspPayload'
--
-- * 'rlspRemarketingListId'
remarketingListSharesPatch
    :: Int64 -- ^ 'rlspProFileId'
    -> RemarketingListShare -- ^ 'rlspPayload'
    -> Int64 -- ^ 'rlspRemarketingListId'
    -> RemarketingListSharesPatch
remarketingListSharesPatch pRlspProFileId_ pRlspPayload_ pRlspRemarketingListId_ =
    RemarketingListSharesPatch
    { _rlspProFileId = pRlspProFileId_
    , _rlspPayload = pRlspPayload_
    , _rlspRemarketingListId = pRlspRemarketingListId_
    }

-- | User profile ID associated with this request.
rlspProFileId :: Lens' RemarketingListSharesPatch Int64
rlspProFileId
  = lens _rlspProFileId
      (\ s a -> s{_rlspProFileId = a})

-- | Multipart request metadata.
rlspPayload :: Lens' RemarketingListSharesPatch RemarketingListShare
rlspPayload
  = lens _rlspPayload (\ s a -> s{_rlspPayload = a})

-- | Remarketing list ID.
rlspRemarketingListId :: Lens' RemarketingListSharesPatch Int64
rlspRemarketingListId
  = lens _rlspRemarketingListId
      (\ s a -> s{_rlspRemarketingListId = a})

instance GoogleRequest RemarketingListSharesPatch
         where
        type Rs RemarketingListSharesPatch =
             RemarketingListShare
        requestClient RemarketingListSharesPatch{..}
          = go _rlspProFileId (Just _rlspRemarketingListId)
              (Just AltJSON)
              _rlspPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListSharesPatchResource)
                      mempty
