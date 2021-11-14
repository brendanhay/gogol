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
-- Module      : Network.Google.Resource.DFAReporting.RemarketingLists.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing remarketing list. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.remarketingLists.patch@.
module Network.Google.Resource.DFAReporting.RemarketingLists.Patch
    (
    -- * REST Resource
      RemarketingListsPatchResource

    -- * Creating a Request
    , remarketingListsPatch
    , RemarketingListsPatch

    -- * Request Lenses
    , rlpXgafv
    , rlpUploadProtocol
    , rlpAccessToken
    , rlpUploadType
    , rlpProFileId
    , rlpPayload
    , rlpId
    , rlpCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.remarketingLists.patch@ method which the
-- 'RemarketingListsPatch' request conforms to.
type RemarketingListsPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "remarketingLists" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] RemarketingList :>
                               Patch '[JSON] RemarketingList

-- | Updates an existing remarketing list. This method supports patch
-- semantics.
--
-- /See:/ 'remarketingListsPatch' smart constructor.
data RemarketingListsPatch =
  RemarketingListsPatch'
    { _rlpXgafv :: !(Maybe Xgafv)
    , _rlpUploadProtocol :: !(Maybe Text)
    , _rlpAccessToken :: !(Maybe Text)
    , _rlpUploadType :: !(Maybe Text)
    , _rlpProFileId :: !(Textual Int64)
    , _rlpPayload :: !RemarketingList
    , _rlpId :: !(Textual Int64)
    , _rlpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RemarketingListsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rlpXgafv'
--
-- * 'rlpUploadProtocol'
--
-- * 'rlpAccessToken'
--
-- * 'rlpUploadType'
--
-- * 'rlpProFileId'
--
-- * 'rlpPayload'
--
-- * 'rlpId'
--
-- * 'rlpCallback'
remarketingListsPatch
    :: Int64 -- ^ 'rlpProFileId'
    -> RemarketingList -- ^ 'rlpPayload'
    -> Int64 -- ^ 'rlpId'
    -> RemarketingListsPatch
remarketingListsPatch pRlpProFileId_ pRlpPayload_ pRlpId_ =
  RemarketingListsPatch'
    { _rlpXgafv = Nothing
    , _rlpUploadProtocol = Nothing
    , _rlpAccessToken = Nothing
    , _rlpUploadType = Nothing
    , _rlpProFileId = _Coerce # pRlpProFileId_
    , _rlpPayload = pRlpPayload_
    , _rlpId = _Coerce # pRlpId_
    , _rlpCallback = Nothing
    }


-- | V1 error format.
rlpXgafv :: Lens' RemarketingListsPatch (Maybe Xgafv)
rlpXgafv = lens _rlpXgafv (\ s a -> s{_rlpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
rlpUploadProtocol :: Lens' RemarketingListsPatch (Maybe Text)
rlpUploadProtocol
  = lens _rlpUploadProtocol
      (\ s a -> s{_rlpUploadProtocol = a})

-- | OAuth access token.
rlpAccessToken :: Lens' RemarketingListsPatch (Maybe Text)
rlpAccessToken
  = lens _rlpAccessToken
      (\ s a -> s{_rlpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
rlpUploadType :: Lens' RemarketingListsPatch (Maybe Text)
rlpUploadType
  = lens _rlpUploadType
      (\ s a -> s{_rlpUploadType = a})

-- | User profile ID associated with this request.
rlpProFileId :: Lens' RemarketingListsPatch Int64
rlpProFileId
  = lens _rlpProFileId (\ s a -> s{_rlpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
rlpPayload :: Lens' RemarketingListsPatch RemarketingList
rlpPayload
  = lens _rlpPayload (\ s a -> s{_rlpPayload = a})

-- | RemarketingList ID.
rlpId :: Lens' RemarketingListsPatch Int64
rlpId
  = lens _rlpId (\ s a -> s{_rlpId = a}) . _Coerce

-- | JSONP
rlpCallback :: Lens' RemarketingListsPatch (Maybe Text)
rlpCallback
  = lens _rlpCallback (\ s a -> s{_rlpCallback = a})

instance GoogleRequest RemarketingListsPatch where
        type Rs RemarketingListsPatch = RemarketingList
        type Scopes RemarketingListsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient RemarketingListsPatch'{..}
          = go _rlpProFileId (Just _rlpId) _rlpXgafv
              _rlpUploadProtocol
              _rlpAccessToken
              _rlpUploadType
              _rlpCallback
              (Just AltJSON)
              _rlpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy RemarketingListsPatchResource)
                      mempty
