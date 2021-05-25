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
-- Module      : Network.Google.Resource.DFAReporting.UserProFiles.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves list of user profiles for a user.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.userProfiles.list@.
module Network.Google.Resource.DFAReporting.UserProFiles.List
    (
    -- * REST Resource
      UserProFilesListResource

    -- * Creating a Request
    , userProFilesList
    , UserProFilesList

    -- * Request Lenses
    , upflXgafv
    , upflUploadProtocol
    , upflAccessToken
    , upflUploadType
    , upflCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.userProfiles.list@ method which the
-- 'UserProFilesList' request conforms to.
type UserProFilesListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] UserProFileList

-- | Retrieves list of user profiles for a user.
--
-- /See:/ 'userProFilesList' smart constructor.
data UserProFilesList =
  UserProFilesList'
    { _upflXgafv :: !(Maybe Xgafv)
    , _upflUploadProtocol :: !(Maybe Text)
    , _upflAccessToken :: !(Maybe Text)
    , _upflUploadType :: !(Maybe Text)
    , _upflCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'UserProFilesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upflXgafv'
--
-- * 'upflUploadProtocol'
--
-- * 'upflAccessToken'
--
-- * 'upflUploadType'
--
-- * 'upflCallback'
userProFilesList
    :: UserProFilesList
userProFilesList =
  UserProFilesList'
    { _upflXgafv = Nothing
    , _upflUploadProtocol = Nothing
    , _upflAccessToken = Nothing
    , _upflUploadType = Nothing
    , _upflCallback = Nothing
    }


-- | V1 error format.
upflXgafv :: Lens' UserProFilesList (Maybe Xgafv)
upflXgafv
  = lens _upflXgafv (\ s a -> s{_upflXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
upflUploadProtocol :: Lens' UserProFilesList (Maybe Text)
upflUploadProtocol
  = lens _upflUploadProtocol
      (\ s a -> s{_upflUploadProtocol = a})

-- | OAuth access token.
upflAccessToken :: Lens' UserProFilesList (Maybe Text)
upflAccessToken
  = lens _upflAccessToken
      (\ s a -> s{_upflAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
upflUploadType :: Lens' UserProFilesList (Maybe Text)
upflUploadType
  = lens _upflUploadType
      (\ s a -> s{_upflUploadType = a})

-- | JSONP
upflCallback :: Lens' UserProFilesList (Maybe Text)
upflCallback
  = lens _upflCallback (\ s a -> s{_upflCallback = a})

instance GoogleRequest UserProFilesList where
        type Rs UserProFilesList = UserProFileList
        type Scopes UserProFilesList =
             '["https://www.googleapis.com/auth/ddmconversions",
               "https://www.googleapis.com/auth/dfareporting",
               "https://www.googleapis.com/auth/dfatrafficking"]
        requestClient UserProFilesList'{..}
          = go _upflXgafv _upflUploadProtocol _upflAccessToken
              _upflUploadType
              _upflCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy UserProFilesListResource)
                      mempty
