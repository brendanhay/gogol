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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing floodlight activity group. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.floodlightActivityGroups.patch@.
module Network.Google.Resource.DFAReporting.FloodlightActivityGroups.Patch
    (
    -- * REST Resource
      FloodlightActivityGroupsPatchResource

    -- * Creating a Request
    , floodlightActivityGroupsPatch
    , FloodlightActivityGroupsPatch

    -- * Request Lenses
    , fagpXgafv
    , fagpUploadProtocol
    , fagpAccessToken
    , fagpUploadType
    , fagpProFileId
    , fagpPayload
    , fagpId
    , fagpCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.floodlightActivityGroups.patch@ method which the
-- 'FloodlightActivityGroupsPatch' request conforms to.
type FloodlightActivityGroupsPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "floodlightActivityGroups" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] FloodlightActivityGroup :>
                               Patch '[JSON] FloodlightActivityGroup

-- | Updates an existing floodlight activity group. This method supports
-- patch semantics.
--
-- /See:/ 'floodlightActivityGroupsPatch' smart constructor.
data FloodlightActivityGroupsPatch =
  FloodlightActivityGroupsPatch'
    { _fagpXgafv :: !(Maybe Xgafv)
    , _fagpUploadProtocol :: !(Maybe Text)
    , _fagpAccessToken :: !(Maybe Text)
    , _fagpUploadType :: !(Maybe Text)
    , _fagpProFileId :: !(Textual Int64)
    , _fagpPayload :: !FloodlightActivityGroup
    , _fagpId :: !(Textual Int64)
    , _fagpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FloodlightActivityGroupsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fagpXgafv'
--
-- * 'fagpUploadProtocol'
--
-- * 'fagpAccessToken'
--
-- * 'fagpUploadType'
--
-- * 'fagpProFileId'
--
-- * 'fagpPayload'
--
-- * 'fagpId'
--
-- * 'fagpCallback'
floodlightActivityGroupsPatch
    :: Int64 -- ^ 'fagpProFileId'
    -> FloodlightActivityGroup -- ^ 'fagpPayload'
    -> Int64 -- ^ 'fagpId'
    -> FloodlightActivityGroupsPatch
floodlightActivityGroupsPatch pFagpProFileId_ pFagpPayload_ pFagpId_ =
  FloodlightActivityGroupsPatch'
    { _fagpXgafv = Nothing
    , _fagpUploadProtocol = Nothing
    , _fagpAccessToken = Nothing
    , _fagpUploadType = Nothing
    , _fagpProFileId = _Coerce # pFagpProFileId_
    , _fagpPayload = pFagpPayload_
    , _fagpId = _Coerce # pFagpId_
    , _fagpCallback = Nothing
    }


-- | V1 error format.
fagpXgafv :: Lens' FloodlightActivityGroupsPatch (Maybe Xgafv)
fagpXgafv
  = lens _fagpXgafv (\ s a -> s{_fagpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fagpUploadProtocol :: Lens' FloodlightActivityGroupsPatch (Maybe Text)
fagpUploadProtocol
  = lens _fagpUploadProtocol
      (\ s a -> s{_fagpUploadProtocol = a})

-- | OAuth access token.
fagpAccessToken :: Lens' FloodlightActivityGroupsPatch (Maybe Text)
fagpAccessToken
  = lens _fagpAccessToken
      (\ s a -> s{_fagpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fagpUploadType :: Lens' FloodlightActivityGroupsPatch (Maybe Text)
fagpUploadType
  = lens _fagpUploadType
      (\ s a -> s{_fagpUploadType = a})

-- | User profile ID associated with this request.
fagpProFileId :: Lens' FloodlightActivityGroupsPatch Int64
fagpProFileId
  = lens _fagpProFileId
      (\ s a -> s{_fagpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
fagpPayload :: Lens' FloodlightActivityGroupsPatch FloodlightActivityGroup
fagpPayload
  = lens _fagpPayload (\ s a -> s{_fagpPayload = a})

-- | FloodlightActivityGroup ID.
fagpId :: Lens' FloodlightActivityGroupsPatch Int64
fagpId
  = lens _fagpId (\ s a -> s{_fagpId = a}) . _Coerce

-- | JSONP
fagpCallback :: Lens' FloodlightActivityGroupsPatch (Maybe Text)
fagpCallback
  = lens _fagpCallback (\ s a -> s{_fagpCallback = a})

instance GoogleRequest FloodlightActivityGroupsPatch
         where
        type Rs FloodlightActivityGroupsPatch =
             FloodlightActivityGroup
        type Scopes FloodlightActivityGroupsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient FloodlightActivityGroupsPatch'{..}
          = go _fagpProFileId (Just _fagpId) _fagpXgafv
              _fagpUploadProtocol
              _fagpAccessToken
              _fagpUploadType
              _fagpCallback
              (Just AltJSON)
              _fagpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy FloodlightActivityGroupsPatchResource)
                      mempty
