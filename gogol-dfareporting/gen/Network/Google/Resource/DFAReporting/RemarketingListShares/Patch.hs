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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing remarketing list share. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.remarketingListShares.patch@.
module Network.Google.Resource.DFAReporting.RemarketingListShares.Patch
    (
    -- * REST Resource
      RemarketingListSharesPatchResource

    -- * Creating a Request
    , remarketingListSharesPatch
    , RemarketingListSharesPatch

    -- * Request Lenses
    , rlspXgafv
    , rlspUploadProtocol
    , rlspAccessToken
    , rlspUploadType
    , rlspProFileId
    , rlspPayload
    , rlspId
    , rlspCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.remarketingListShares.patch@ method which the
-- 'RemarketingListSharesPatch' request conforms to.
type RemarketingListSharesPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "remarketingListShares" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] RemarketingListShare :>
                               Patch '[JSON] RemarketingListShare

-- | Updates an existing remarketing list share. This method supports patch
-- semantics.
--
-- /See:/ 'remarketingListSharesPatch' smart constructor.
data RemarketingListSharesPatch =
  RemarketingListSharesPatch'
    { _rlspXgafv :: !(Maybe Xgafv)
    , _rlspUploadProtocol :: !(Maybe Text)
    , _rlspAccessToken :: !(Maybe Text)
    , _rlspUploadType :: !(Maybe Text)
    , _rlspProFileId :: !(Textual Int64)
    , _rlspPayload :: !RemarketingListShare
    , _rlspId :: !(Textual Int64)
    , _rlspCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemarketingListSharesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlspXgafv'
--
-- * 'rlspUploadProtocol'
--
-- * 'rlspAccessToken'
--
-- * 'rlspUploadType'
--
-- * 'rlspProFileId'
--
-- * 'rlspPayload'
--
-- * 'rlspId'
--
-- * 'rlspCallback'
remarketingListSharesPatch
    :: Int64 -- ^ 'rlspProFileId'
    -> RemarketingListShare -- ^ 'rlspPayload'
    -> Int64 -- ^ 'rlspId'
    -> RemarketingListSharesPatch
remarketingListSharesPatch pRlspProFileId_ pRlspPayload_ pRlspId_ =
  RemarketingListSharesPatch'
    { _rlspXgafv = Nothing
    , _rlspUploadProtocol = Nothing
    , _rlspAccessToken = Nothing
    , _rlspUploadType = Nothing
    , _rlspProFileId = _Coerce # pRlspProFileId_
    , _rlspPayload = pRlspPayload_
    , _rlspId = _Coerce # pRlspId_
    , _rlspCallback = Nothing
    }


-- | V1 error format.
rlspXgafv :: Lens' RemarketingListSharesPatch (Maybe Xgafv)
rlspXgafv
  = lens _rlspXgafv (\ s a -> s{_rlspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rlspUploadProtocol :: Lens' RemarketingListSharesPatch (Maybe Text)
rlspUploadProtocol
  = lens _rlspUploadProtocol
      (\ s a -> s{_rlspUploadProtocol = a})

-- | OAuth access token.
rlspAccessToken :: Lens' RemarketingListSharesPatch (Maybe Text)
rlspAccessToken
  = lens _rlspAccessToken
      (\ s a -> s{_rlspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rlspUploadType :: Lens' RemarketingListSharesPatch (Maybe Text)
rlspUploadType
  = lens _rlspUploadType
      (\ s a -> s{_rlspUploadType = a})

-- | User profile ID associated with this request.
rlspProFileId :: Lens' RemarketingListSharesPatch Int64
rlspProFileId
  = lens _rlspProFileId
      (\ s a -> s{_rlspProFileId = a})
      . _Coerce

-- | Multipart request metadata.
rlspPayload :: Lens' RemarketingListSharesPatch RemarketingListShare
rlspPayload
  = lens _rlspPayload (\ s a -> s{_rlspPayload = a})

-- | RemarketingList ID.
rlspId :: Lens' RemarketingListSharesPatch Int64
rlspId
  = lens _rlspId (\ s a -> s{_rlspId = a}) . _Coerce

-- | JSONP
rlspCallback :: Lens' RemarketingListSharesPatch (Maybe Text)
rlspCallback
  = lens _rlspCallback (\ s a -> s{_rlspCallback = a})

instance GoogleRequest RemarketingListSharesPatch
         where
        type Rs RemarketingListSharesPatch =
             RemarketingListShare
        type Scopes RemarketingListSharesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient RemarketingListSharesPatch'{..}
          = go _rlspProFileId (Just _rlspId) _rlspXgafv
              _rlspUploadProtocol
              _rlspAccessToken
              _rlspUploadType
              _rlspCallback
              (Just AltJSON)
              _rlspPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListSharesPatchResource)
                      mempty
