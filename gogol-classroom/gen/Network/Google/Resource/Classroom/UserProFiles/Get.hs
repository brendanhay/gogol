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
-- Module      : Network.Google.Resource.Classroom.UserProFiles.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a user profile. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- this user profile, if no profile exists with the requested ID, or for
-- access errors.
--
-- /See:/ <https://developers.google.com/classroom/ Google Classroom API Reference> for @classroom.userProfiles.get@.
module Network.Google.Resource.Classroom.UserProFiles.Get
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
    , upfgUserId
    , upfgCallback
    ) where

import Network.Google.Classroom.Types
import Network.Google.Prelude

-- | A resource alias for @classroom.userProfiles.get@ method which the
-- 'UserProFilesGet' request conforms to.
type UserProFilesGetResource =
     "v1" :>
       "userProfiles" :>
         Capture "userId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] UserProFile

-- | Returns a user profile. This method returns the following error codes: *
-- \`PERMISSION_DENIED\` if the requesting user is not permitted to access
-- this user profile, if no profile exists with the requested ID, or for
-- access errors.
--
-- /See:/ 'userProFilesGet' smart constructor.
data UserProFilesGet =
  UserProFilesGet'
    { _upfgXgafv :: !(Maybe Xgafv)
    , _upfgUploadProtocol :: !(Maybe Text)
    , _upfgAccessToken :: !(Maybe Text)
    , _upfgUploadType :: !(Maybe Text)
    , _upfgUserId :: !Text
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
-- * 'upfgUserId'
--
-- * 'upfgCallback'
userProFilesGet
    :: Text -- ^ 'upfgUserId'
    -> UserProFilesGet
userProFilesGet pUpfgUserId_ =
  UserProFilesGet'
    { _upfgXgafv = Nothing
    , _upfgUploadProtocol = Nothing
    , _upfgAccessToken = Nothing
    , _upfgUploadType = Nothing
    , _upfgUserId = pUpfgUserId_
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

-- | Identifier of the profile to return. The identifier can be one of the
-- following: * the numeric identifier for the user * the email address of
-- the user * the string literal \`\"me\"\`, indicating the requesting user
upfgUserId :: Lens' UserProFilesGet Text
upfgUserId
  = lens _upfgUserId (\ s a -> s{_upfgUserId = a})

-- | JSONP
upfgCallback :: Lens' UserProFilesGet (Maybe Text)
upfgCallback
  = lens _upfgCallback (\ s a -> s{_upfgCallback = a})

instance GoogleRequest UserProFilesGet where
        type Rs UserProFilesGet = UserProFile
        type Scopes UserProFilesGet =
             '["https://www.googleapis.com/auth/classroom.profile.emails",
               "https://www.googleapis.com/auth/classroom.profile.photos",
               "https://www.googleapis.com/auth/classroom.rosters",
               "https://www.googleapis.com/auth/classroom.rosters.readonly"]
        requestClient UserProFilesGet'{..}
          = go _upfgUserId _upfgXgafv _upfgUploadProtocol
              _upfgAccessToken
              _upfgUploadType
              _upfgCallback
              (Just AltJSON)
              classroomService
          where go
                  = buildClient
                      (Proxy :: Proxy UserProFilesGetResource)
                      mempty
