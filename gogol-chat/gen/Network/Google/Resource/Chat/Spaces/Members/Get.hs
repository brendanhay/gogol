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
-- Module      : Network.Google.Resource.Chat.Spaces.Members.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a membership.
--
-- /See:/ <https://developers.google.com/hangouts/chat Google Chat API Reference> for @chat.spaces.members.get@.
module Network.Google.Resource.Chat.Spaces.Members.Get
    (
    -- * REST Resource
      SpacesMembersGetResource

    -- * Creating a Request
    , spacesMembersGet
    , SpacesMembersGet

    -- * Request Lenses
    , spaXgafv
    , spaUploadProtocol
    , spaAccessToken
    , spaUploadType
    , spaName
    , spaCallback
    ) where

import Network.Google.Chat.Types
import Network.Google.Prelude

-- | A resource alias for @chat.spaces.members.get@ method which the
-- 'SpacesMembersGet' request conforms to.
type SpacesMembersGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] Membership

-- | Returns a membership.
--
-- /See:/ 'spacesMembersGet' smart constructor.
data SpacesMembersGet =
  SpacesMembersGet'
    { _spaXgafv :: !(Maybe Xgafv)
    , _spaUploadProtocol :: !(Maybe Text)
    , _spaAccessToken :: !(Maybe Text)
    , _spaUploadType :: !(Maybe Text)
    , _spaName :: !Text
    , _spaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SpacesMembersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spaXgafv'
--
-- * 'spaUploadProtocol'
--
-- * 'spaAccessToken'
--
-- * 'spaUploadType'
--
-- * 'spaName'
--
-- * 'spaCallback'
spacesMembersGet
    :: Text -- ^ 'spaName'
    -> SpacesMembersGet
spacesMembersGet pSpaName_ =
  SpacesMembersGet'
    { _spaXgafv = Nothing
    , _spaUploadProtocol = Nothing
    , _spaAccessToken = Nothing
    , _spaUploadType = Nothing
    , _spaName = pSpaName_
    , _spaCallback = Nothing
    }


-- | V1 error format.
spaXgafv :: Lens' SpacesMembersGet (Maybe Xgafv)
spaXgafv = lens _spaXgafv (\ s a -> s{_spaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
spaUploadProtocol :: Lens' SpacesMembersGet (Maybe Text)
spaUploadProtocol
  = lens _spaUploadProtocol
      (\ s a -> s{_spaUploadProtocol = a})

-- | OAuth access token.
spaAccessToken :: Lens' SpacesMembersGet (Maybe Text)
spaAccessToken
  = lens _spaAccessToken
      (\ s a -> s{_spaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
spaUploadType :: Lens' SpacesMembersGet (Maybe Text)
spaUploadType
  = lens _spaUploadType
      (\ s a -> s{_spaUploadType = a})

-- | Required. Resource name of the membership to be retrieved, in the form
-- \"spaces\/*\/members\/*\". Example:
-- spaces\/AAAAMpdlehY\/members\/105115627578887013105
spaName :: Lens' SpacesMembersGet Text
spaName = lens _spaName (\ s a -> s{_spaName = a})

-- | JSONP
spaCallback :: Lens' SpacesMembersGet (Maybe Text)
spaCallback
  = lens _spaCallback (\ s a -> s{_spaCallback = a})

instance GoogleRequest SpacesMembersGet where
        type Rs SpacesMembersGet = Membership
        type Scopes SpacesMembersGet = '[]
        requestClient SpacesMembersGet'{..}
          = go _spaName _spaXgafv _spaUploadProtocol
              _spaAccessToken
              _spaUploadType
              _spaCallback
              (Just AltJSON)
              chatService
          where go
                  = buildClient
                      (Proxy :: Proxy SpacesMembersGetResource)
                      mempty
