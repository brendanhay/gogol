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
-- Module      : Network.Google.Resource.DFAReporting.PlacementGroups.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing placement group.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placementGroups.update@.
module Network.Google.Resource.DFAReporting.PlacementGroups.Update
    (
    -- * REST Resource
      PlacementGroupsUpdateResource

    -- * Creating a Request
    , placementGroupsUpdate
    , PlacementGroupsUpdate

    -- * Request Lenses
    , pguXgafv
    , pguUploadProtocol
    , pguAccessToken
    , pguUploadType
    , pguProFileId
    , pguPayload
    , pguCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placementGroups.update@ method which the
-- 'PlacementGroupsUpdate' request conforms to.
type PlacementGroupsUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementGroups" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PlacementGroup :>
                             Put '[JSON] PlacementGroup

-- | Updates an existing placement group.
--
-- /See:/ 'placementGroupsUpdate' smart constructor.
data PlacementGroupsUpdate =
  PlacementGroupsUpdate'
    { _pguXgafv :: !(Maybe Xgafv)
    , _pguUploadProtocol :: !(Maybe Text)
    , _pguAccessToken :: !(Maybe Text)
    , _pguUploadType :: !(Maybe Text)
    , _pguProFileId :: !(Textual Int64)
    , _pguPayload :: !PlacementGroup
    , _pguCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementGroupsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pguXgafv'
--
-- * 'pguUploadProtocol'
--
-- * 'pguAccessToken'
--
-- * 'pguUploadType'
--
-- * 'pguProFileId'
--
-- * 'pguPayload'
--
-- * 'pguCallback'
placementGroupsUpdate
    :: Int64 -- ^ 'pguProFileId'
    -> PlacementGroup -- ^ 'pguPayload'
    -> PlacementGroupsUpdate
placementGroupsUpdate pPguProFileId_ pPguPayload_ =
  PlacementGroupsUpdate'
    { _pguXgafv = Nothing
    , _pguUploadProtocol = Nothing
    , _pguAccessToken = Nothing
    , _pguUploadType = Nothing
    , _pguProFileId = _Coerce # pPguProFileId_
    , _pguPayload = pPguPayload_
    , _pguCallback = Nothing
    }


-- | V1 error format.
pguXgafv :: Lens' PlacementGroupsUpdate (Maybe Xgafv)
pguXgafv = lens _pguXgafv (\ s a -> s{_pguXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pguUploadProtocol :: Lens' PlacementGroupsUpdate (Maybe Text)
pguUploadProtocol
  = lens _pguUploadProtocol
      (\ s a -> s{_pguUploadProtocol = a})

-- | OAuth access token.
pguAccessToken :: Lens' PlacementGroupsUpdate (Maybe Text)
pguAccessToken
  = lens _pguAccessToken
      (\ s a -> s{_pguAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pguUploadType :: Lens' PlacementGroupsUpdate (Maybe Text)
pguUploadType
  = lens _pguUploadType
      (\ s a -> s{_pguUploadType = a})

-- | User profile ID associated with this request.
pguProFileId :: Lens' PlacementGroupsUpdate Int64
pguProFileId
  = lens _pguProFileId (\ s a -> s{_pguProFileId = a})
      . _Coerce

-- | Multipart request metadata.
pguPayload :: Lens' PlacementGroupsUpdate PlacementGroup
pguPayload
  = lens _pguPayload (\ s a -> s{_pguPayload = a})

-- | JSONP
pguCallback :: Lens' PlacementGroupsUpdate (Maybe Text)
pguCallback
  = lens _pguCallback (\ s a -> s{_pguCallback = a})

instance GoogleRequest PlacementGroupsUpdate where
        type Rs PlacementGroupsUpdate = PlacementGroup
        type Scopes PlacementGroupsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementGroupsUpdate'{..}
          = go _pguProFileId _pguXgafv _pguUploadProtocol
              _pguAccessToken
              _pguUploadType
              _pguCallback
              (Just AltJSON)
              _pguPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementGroupsUpdateResource)
                      mempty
