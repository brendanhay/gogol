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
-- Module      : Network.Google.Resource.DFAReporting.PlacementGroups.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing placement group. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placementGroups.patch@.
module Network.Google.Resource.DFAReporting.PlacementGroups.Patch
    (
    -- * REST Resource
      PlacementGroupsPatchResource

    -- * Creating a Request
    , placementGroupsPatch
    , PlacementGroupsPatch

    -- * Request Lenses
    , pgpXgafv
    , pgpUploadProtocol
    , pgpAccessToken
    , pgpUploadType
    , pgpProFileId
    , pgpPayload
    , pgpId
    , pgpCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placementGroups.patch@ method which the
-- 'PlacementGroupsPatch' request conforms to.
type PlacementGroupsPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementGroups" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] PlacementGroup :>
                               Patch '[JSON] PlacementGroup

-- | Updates an existing placement group. This method supports patch
-- semantics.
--
-- /See:/ 'placementGroupsPatch' smart constructor.
data PlacementGroupsPatch =
  PlacementGroupsPatch'
    { _pgpXgafv :: !(Maybe Xgafv)
    , _pgpUploadProtocol :: !(Maybe Text)
    , _pgpAccessToken :: !(Maybe Text)
    , _pgpUploadType :: !(Maybe Text)
    , _pgpProFileId :: !(Textual Int64)
    , _pgpPayload :: !PlacementGroup
    , _pgpId :: !(Textual Int64)
    , _pgpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementGroupsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgpXgafv'
--
-- * 'pgpUploadProtocol'
--
-- * 'pgpAccessToken'
--
-- * 'pgpUploadType'
--
-- * 'pgpProFileId'
--
-- * 'pgpPayload'
--
-- * 'pgpId'
--
-- * 'pgpCallback'
placementGroupsPatch
    :: Int64 -- ^ 'pgpProFileId'
    -> PlacementGroup -- ^ 'pgpPayload'
    -> Int64 -- ^ 'pgpId'
    -> PlacementGroupsPatch
placementGroupsPatch pPgpProFileId_ pPgpPayload_ pPgpId_ =
  PlacementGroupsPatch'
    { _pgpXgafv = Nothing
    , _pgpUploadProtocol = Nothing
    , _pgpAccessToken = Nothing
    , _pgpUploadType = Nothing
    , _pgpProFileId = _Coerce # pPgpProFileId_
    , _pgpPayload = pPgpPayload_
    , _pgpId = _Coerce # pPgpId_
    , _pgpCallback = Nothing
    }


-- | V1 error format.
pgpXgafv :: Lens' PlacementGroupsPatch (Maybe Xgafv)
pgpXgafv = lens _pgpXgafv (\ s a -> s{_pgpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgpUploadProtocol :: Lens' PlacementGroupsPatch (Maybe Text)
pgpUploadProtocol
  = lens _pgpUploadProtocol
      (\ s a -> s{_pgpUploadProtocol = a})

-- | OAuth access token.
pgpAccessToken :: Lens' PlacementGroupsPatch (Maybe Text)
pgpAccessToken
  = lens _pgpAccessToken
      (\ s a -> s{_pgpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgpUploadType :: Lens' PlacementGroupsPatch (Maybe Text)
pgpUploadType
  = lens _pgpUploadType
      (\ s a -> s{_pgpUploadType = a})

-- | User profile ID associated with this request.
pgpProFileId :: Lens' PlacementGroupsPatch Int64
pgpProFileId
  = lens _pgpProFileId (\ s a -> s{_pgpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
pgpPayload :: Lens' PlacementGroupsPatch PlacementGroup
pgpPayload
  = lens _pgpPayload (\ s a -> s{_pgpPayload = a})

-- | PlacementGroup ID.
pgpId :: Lens' PlacementGroupsPatch Int64
pgpId
  = lens _pgpId (\ s a -> s{_pgpId = a}) . _Coerce

-- | JSONP
pgpCallback :: Lens' PlacementGroupsPatch (Maybe Text)
pgpCallback
  = lens _pgpCallback (\ s a -> s{_pgpCallback = a})

instance GoogleRequest PlacementGroupsPatch where
        type Rs PlacementGroupsPatch = PlacementGroup
        type Scopes PlacementGroupsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementGroupsPatch'{..}
          = go _pgpProFileId (Just _pgpId) _pgpXgafv
              _pgpUploadProtocol
              _pgpAccessToken
              _pgpUploadType
              _pgpCallback
              (Just AltJSON)
              _pgpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementGroupsPatchResource)
                      mempty
