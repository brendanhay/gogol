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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing remarketing list share.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.remarketingListShares.update@.
module Network.Google.Resource.DFAReporting.RemarketingListShares.Update
    (
    -- * REST Resource
      RemarketingListSharesUpdateResource

    -- * Creating a Request
    , remarketingListSharesUpdate
    , RemarketingListSharesUpdate

    -- * Request Lenses
    , rlsuXgafv
    , rlsuUploadProtocol
    , rlsuAccessToken
    , rlsuUploadType
    , rlsuProFileId
    , rlsuPayload
    , rlsuCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.remarketingListShares.update@ method which the
-- 'RemarketingListSharesUpdate' request conforms to.
type RemarketingListSharesUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "remarketingListShares" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RemarketingListShare :>
                             Put '[JSON] RemarketingListShare

-- | Updates an existing remarketing list share.
--
-- /See:/ 'remarketingListSharesUpdate' smart constructor.
data RemarketingListSharesUpdate =
  RemarketingListSharesUpdate'
    { _rlsuXgafv :: !(Maybe Xgafv)
    , _rlsuUploadProtocol :: !(Maybe Text)
    , _rlsuAccessToken :: !(Maybe Text)
    , _rlsuUploadType :: !(Maybe Text)
    , _rlsuProFileId :: !(Textual Int64)
    , _rlsuPayload :: !RemarketingListShare
    , _rlsuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemarketingListSharesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlsuXgafv'
--
-- * 'rlsuUploadProtocol'
--
-- * 'rlsuAccessToken'
--
-- * 'rlsuUploadType'
--
-- * 'rlsuProFileId'
--
-- * 'rlsuPayload'
--
-- * 'rlsuCallback'
remarketingListSharesUpdate
    :: Int64 -- ^ 'rlsuProFileId'
    -> RemarketingListShare -- ^ 'rlsuPayload'
    -> RemarketingListSharesUpdate
remarketingListSharesUpdate pRlsuProFileId_ pRlsuPayload_ =
  RemarketingListSharesUpdate'
    { _rlsuXgafv = Nothing
    , _rlsuUploadProtocol = Nothing
    , _rlsuAccessToken = Nothing
    , _rlsuUploadType = Nothing
    , _rlsuProFileId = _Coerce # pRlsuProFileId_
    , _rlsuPayload = pRlsuPayload_
    , _rlsuCallback = Nothing
    }


-- | V1 error format.
rlsuXgafv :: Lens' RemarketingListSharesUpdate (Maybe Xgafv)
rlsuXgafv
  = lens _rlsuXgafv (\ s a -> s{_rlsuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rlsuUploadProtocol :: Lens' RemarketingListSharesUpdate (Maybe Text)
rlsuUploadProtocol
  = lens _rlsuUploadProtocol
      (\ s a -> s{_rlsuUploadProtocol = a})

-- | OAuth access token.
rlsuAccessToken :: Lens' RemarketingListSharesUpdate (Maybe Text)
rlsuAccessToken
  = lens _rlsuAccessToken
      (\ s a -> s{_rlsuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rlsuUploadType :: Lens' RemarketingListSharesUpdate (Maybe Text)
rlsuUploadType
  = lens _rlsuUploadType
      (\ s a -> s{_rlsuUploadType = a})

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

-- | JSONP
rlsuCallback :: Lens' RemarketingListSharesUpdate (Maybe Text)
rlsuCallback
  = lens _rlsuCallback (\ s a -> s{_rlsuCallback = a})

instance GoogleRequest RemarketingListSharesUpdate
         where
        type Rs RemarketingListSharesUpdate =
             RemarketingListShare
        type Scopes RemarketingListSharesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient RemarketingListSharesUpdate'{..}
          = go _rlsuProFileId _rlsuXgafv _rlsuUploadProtocol
              _rlsuAccessToken
              _rlsuUploadType
              _rlsuCallback
              (Just AltJSON)
              _rlsuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListSharesUpdateResource)
                      mempty
