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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingListShares.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing remarketing list share.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.remarketingListShares.update@.
module Network.Google.Resource.DFAReporting.RemarketingListShares.Update
    (
    -- * REST Resource
      RemarketingListSharesUpdateResource

    -- * Creating a Request
    , remarketingListSharesUpdate
    , RemarketingListSharesUpdate

    -- * Request Lenses
    , rlsuProFileId
    , rlsuPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.remarketingListShares.update@ method which the
-- 'RemarketingListSharesUpdate' request conforms to.
type RemarketingListSharesUpdateResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "remarketingListShares" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] RemarketingListShare :>
                   Put '[JSON] RemarketingListShare

-- | Updates an existing remarketing list share.
--
-- /See:/ 'remarketingListSharesUpdate' smart constructor.
data RemarketingListSharesUpdate = RemarketingListSharesUpdate
    { _rlsuProFileId :: !(Textual Int64)
    , _rlsuPayload   :: !RemarketingListShare
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RemarketingListSharesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlsuProFileId'
--
-- * 'rlsuPayload'
remarketingListSharesUpdate
    :: Int64 -- ^ 'rlsuProFileId'
    -> RemarketingListShare -- ^ 'rlsuPayload'
    -> RemarketingListSharesUpdate
remarketingListSharesUpdate pRlsuProFileId_ pRlsuPayload_ =
    RemarketingListSharesUpdate
    { _rlsuProFileId = _Coerce # pRlsuProFileId_
    , _rlsuPayload = pRlsuPayload_
    }

-- | User profile ID associated with this request.
rlsuProFileId :: Lens' RemarketingListSharesUpdate Int64
rlsuProFileId
  = lens _rlsuProFileId
      (\ s a -> s{_rlsuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
rlsuPayload :: Lens' RemarketingListSharesUpdate RemarketingListShare
rlsuPayload
  = lens _rlsuPayload (\ s a -> s{_rlsuPayload = a})

instance GoogleRequest RemarketingListSharesUpdate
         where
        type Rs RemarketingListSharesUpdate =
             RemarketingListShare
        requestClient RemarketingListSharesUpdate{..}
          = go _rlsuProFileId (Just AltJSON) _rlsuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListSharesUpdateResource)
                      mempty
