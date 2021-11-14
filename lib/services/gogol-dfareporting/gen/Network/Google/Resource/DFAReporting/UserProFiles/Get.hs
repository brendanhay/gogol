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
-- Module      : Network.Google.Resource.DFAReporting.UserProFiles.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one user profile by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userProfiles.get@.
module Network.Google.Resource.DFAReporting.UserProFiles.Get
    (
    -- * REST Resource
      UserProFilesGetResource

    -- * Creating a Request
    , userProFilesGet
    , UserProFilesGet

    -- * Request Lenses
    , upfgXgafv
    , upfgUploadProtocol
    , upfgAccessToken
    , upfgUploadType
    , upfgProFileId
    , upfgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.userProfiles.get@ method which the
-- 'UserProFilesGet' request conforms to.
type UserProFilesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] UserProFile

-- | Gets one user profile by ID.
--
-- /See:/ 'userProFilesGet' smart constructor.
data UserProFilesGet =
  UserProFilesGet'
    { _upfgXgafv :: !(Maybe Xgafv)
    , _upfgUploadProtocol :: !(Maybe Text)
    , _upfgAccessToken :: !(Maybe Text)
    , _upfgUploadType :: !(Maybe Text)
    , _upfgProFileId :: !(Textual Int64)
    , _upfgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserProFilesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upfgXgafv'
--
-- * 'upfgUploadProtocol'
--
-- * 'upfgAccessToken'
--
-- * 'upfgUploadType'
--
-- * 'upfgProFileId'
--
-- * 'upfgCallback'
userProFilesGet
    :: Int64 -- ^ 'upfgProFileId'
    -> UserProFilesGet
userProFilesGet pUpfgProFileId_ =
  UserProFilesGet'
    { _upfgXgafv = Nothing
    , _upfgUploadProtocol = Nothing
    , _upfgAccessToken = Nothing
    , _upfgUploadType = Nothing
    , _upfgProFileId = _Coerce # pUpfgProFileId_
    , _upfgCallback = Nothing
    }


-- | V1 error format.
upfgXgafv :: Lens' UserProFilesGet (Maybe Xgafv)
upfgXgafv
  = lens _upfgXgafv (\ s a -> s{_upfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
upfgUploadProtocol :: Lens' UserProFilesGet (Maybe Text)
upfgUploadProtocol
  = lens _upfgUploadProtocol
      (\ s a -> s{_upfgUploadProtocol = a})

-- | OAuth access token.
upfgAccessToken :: Lens' UserProFilesGet (Maybe Text)
upfgAccessToken
  = lens _upfgAccessToken
      (\ s a -> s{_upfgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
upfgUploadType :: Lens' UserProFilesGet (Maybe Text)
upfgUploadType
  = lens _upfgUploadType
      (\ s a -> s{_upfgUploadType = a})

-- | The user profile ID.
upfgProFileId :: Lens' UserProFilesGet Int64
upfgProFileId
  = lens _upfgProFileId
      (\ s a -> s{_upfgProFileId = a})
      . _Coerce

-- | JSONP
upfgCallback :: Lens' UserProFilesGet (Maybe Text)
upfgCallback
  = lens _upfgCallback (\ s a -> s{_upfgCallback = a})

instance GoogleRequest UserProFilesGet where
        type Rs UserProFilesGet = UserProFile
        type Scopes UserProFilesGet =
             '["https://www.googleapis.com/auth/ddmconversions",
               "https://www.googleapis.com/auth/dfareporting",
               "https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserProFilesGet'{..}
          = go _upfgProFileId _upfgXgafv _upfgUploadProtocol
              _upfgAccessToken
              _upfgUploadType
              _upfgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserProFilesGetResource)
                      mempty
