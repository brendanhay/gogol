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
-- Module      : Network.Google.Resource.People.People.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about a person resource for a resource name. Use
-- \`people\/me\` to indicate the authenticated user.
--
-- /See:/ <https://developers.google.com/people/ Google People API Reference> for @people.people.get@.
module Network.Google.Resource.People.People.Get
    (
    -- * REST Resource
      PeopleGetResource

    -- * Creating a Request
    , peopleGet
    , PeopleGet

    -- * Request Lenses
    , pgXgafv
    , pgUploadProtocol
    , pgResourceName
    , pgRequestMaskIncludeField
    , pgPp
    , pgAccessToken
    , pgUploadType
    , pgBearerToken
    , pgCallback
    ) where

import           Network.Google.People.Types
import           Network.Google.Prelude

-- | A resource alias for @people.people.get@ method which the
-- 'PeopleGet' request conforms to.
type PeopleGetResource =
     "v1" :>
       Capture "resourceName" Text :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "requestMask.includeField" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Person

-- | Provides information about a person resource for a resource name. Use
-- \`people\/me\` to indicate the authenticated user.
--
-- /See:/ 'peopleGet' smart constructor.
data PeopleGet = PeopleGet'
    { _pgXgafv                   :: !(Maybe Text)
    , _pgUploadProtocol          :: !(Maybe Text)
    , _pgResourceName            :: !Text
    , _pgRequestMaskIncludeField :: !(Maybe Text)
    , _pgPp                      :: !Bool
    , _pgAccessToken             :: !(Maybe Text)
    , _pgUploadType              :: !(Maybe Text)
    , _pgBearerToken             :: !(Maybe Text)
    , _pgCallback                :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PeopleGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgXgafv'
--
-- * 'pgUploadProtocol'
--
-- * 'pgResourceName'
--
-- * 'pgRequestMaskIncludeField'
--
-- * 'pgPp'
--
-- * 'pgAccessToken'
--
-- * 'pgUploadType'
--
-- * 'pgBearerToken'
--
-- * 'pgCallback'
peopleGet
    :: Text -- ^ 'pgResourceName'
    -> PeopleGet
peopleGet pPgResourceName_ =
    PeopleGet'
    { _pgXgafv = Nothing
    , _pgUploadProtocol = Nothing
    , _pgResourceName = pPgResourceName_
    , _pgRequestMaskIncludeField = Nothing
    , _pgPp = True
    , _pgAccessToken = Nothing
    , _pgUploadType = Nothing
    , _pgBearerToken = Nothing
    , _pgCallback = Nothing
    }

-- | V1 error format.
pgXgafv :: Lens' PeopleGet (Maybe Text)
pgXgafv = lens _pgXgafv (\ s a -> s{_pgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgUploadProtocol :: Lens' PeopleGet (Maybe Text)
pgUploadProtocol
  = lens _pgUploadProtocol
      (\ s a -> s{_pgUploadProtocol = a})

-- | The resource name of the person to provide information about. - To get
-- information about the authenticated user, specify \`people\/me\`. - To
-- get information about any user, specify the resource name that
-- identifies the user, such as the resource names returned by
-- [\`people.connections.list\`](\/people\/api\/rest\/v1\/people.connections\/list).
pgResourceName :: Lens' PeopleGet Text
pgResourceName
  = lens _pgResourceName
      (\ s a -> s{_pgResourceName = a})

-- | Comma-separated list of fields to be included in the response. Omitting
-- this field will include all fields. Each path should start with
-- \`person.\`: for example, \`person.names\` or \`person.photos\`.
pgRequestMaskIncludeField :: Lens' PeopleGet (Maybe Text)
pgRequestMaskIncludeField
  = lens _pgRequestMaskIncludeField
      (\ s a -> s{_pgRequestMaskIncludeField = a})

-- | Pretty-print response.
pgPp :: Lens' PeopleGet Bool
pgPp = lens _pgPp (\ s a -> s{_pgPp = a})

-- | OAuth access token.
pgAccessToken :: Lens' PeopleGet (Maybe Text)
pgAccessToken
  = lens _pgAccessToken
      (\ s a -> s{_pgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgUploadType :: Lens' PeopleGet (Maybe Text)
pgUploadType
  = lens _pgUploadType (\ s a -> s{_pgUploadType = a})

-- | OAuth bearer token.
pgBearerToken :: Lens' PeopleGet (Maybe Text)
pgBearerToken
  = lens _pgBearerToken
      (\ s a -> s{_pgBearerToken = a})

-- | JSONP
pgCallback :: Lens' PeopleGet (Maybe Text)
pgCallback
  = lens _pgCallback (\ s a -> s{_pgCallback = a})

instance GoogleRequest PeopleGet where
        type Rs PeopleGet = Person
        type Scopes PeopleGet =
             '["https://www.googleapis.com/auth/contacts",
               "https://www.googleapis.com/auth/contacts.readonly",
               "https://www.googleapis.com/auth/plus.login",
               "https://www.googleapis.com/auth/user.addresses.read",
               "https://www.googleapis.com/auth/user.birthday.read",
               "https://www.googleapis.com/auth/user.emails.read",
               "https://www.googleapis.com/auth/user.phonenumbers.read",
               "https://www.googleapis.com/auth/userinfo.email",
               "https://www.googleapis.com/auth/userinfo.profile"]
        requestClient PeopleGet'{..}
          = go _pgResourceName _pgXgafv _pgUploadProtocol
              _pgRequestMaskIncludeField
              (Just _pgPp)
              _pgAccessToken
              _pgUploadType
              _pgBearerToken
              _pgCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient (Proxy :: Proxy PeopleGetResource)
                      mempty
