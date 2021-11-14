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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Provides information about a person by specifying a resource name. Use
-- \`people\/me\` to indicate the authenticated user. The request returns a
-- 400 error if \'personFields\' is not specified.
--
-- /See:/ <https://developers.google.com/people/ People API Reference> for @people.people.get@.
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
    , pgAccessToken
    , pgUploadType
    , pgSources
    , pgPersonFields
    , pgCallback
    ) where

import Network.Google.People.Types
import Network.Google.Prelude

-- | A resource alias for @people.people.get@ method which the
-- 'PeopleGet' request conforms to.
type PeopleGetResource =
     "v1" :>
       Capture "resourceName" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "requestMask.includeField" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParams "sources" PeopleGetSources :>
                     QueryParam "personFields" GFieldMask :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Person

-- | Provides information about a person by specifying a resource name. Use
-- \`people\/me\` to indicate the authenticated user. The request returns a
-- 400 error if \'personFields\' is not specified.
--
-- /See:/ 'peopleGet' smart constructor.
data PeopleGet =
  PeopleGet'
    { _pgXgafv :: !(Maybe Xgafv)
    , _pgUploadProtocol :: !(Maybe Text)
    , _pgResourceName :: !Text
    , _pgRequestMaskIncludeField :: !(Maybe GFieldMask)
    , _pgAccessToken :: !(Maybe Text)
    , _pgUploadType :: !(Maybe Text)
    , _pgSources :: !(Maybe [PeopleGetSources])
    , _pgPersonFields :: !(Maybe GFieldMask)
    , _pgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'pgAccessToken'
--
-- * 'pgUploadType'
--
-- * 'pgSources'
--
-- * 'pgPersonFields'
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
    , _pgAccessToken = Nothing
    , _pgUploadType = Nothing
    , _pgSources = Nothing
    , _pgPersonFields = Nothing
    , _pgCallback = Nothing
    }


-- | V1 error format.
pgXgafv :: Lens' PeopleGet (Maybe Xgafv)
pgXgafv = lens _pgXgafv (\ s a -> s{_pgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgUploadProtocol :: Lens' PeopleGet (Maybe Text)
pgUploadProtocol
  = lens _pgUploadProtocol
      (\ s a -> s{_pgUploadProtocol = a})

-- | Required. The resource name of the person to provide information about.
-- - To get information about the authenticated user, specify
-- \`people\/me\`. - To get information about a google account, specify
-- \`people\/{account_id}\`. - To get information about a contact, specify
-- the resource name that identifies the contact as returned by
-- \`people.connections.list\`.
pgResourceName :: Lens' PeopleGet Text
pgResourceName
  = lens _pgResourceName
      (\ s a -> s{_pgResourceName = a})

-- | Required. Comma-separated list of person fields to be included in the
-- response. Each path should start with \`person.\`: for example,
-- \`person.names\` or \`person.photos\`.
pgRequestMaskIncludeField :: Lens' PeopleGet (Maybe GFieldMask)
pgRequestMaskIncludeField
  = lens _pgRequestMaskIncludeField
      (\ s a -> s{_pgRequestMaskIncludeField = a})

-- | OAuth access token.
pgAccessToken :: Lens' PeopleGet (Maybe Text)
pgAccessToken
  = lens _pgAccessToken
      (\ s a -> s{_pgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgUploadType :: Lens' PeopleGet (Maybe Text)
pgUploadType
  = lens _pgUploadType (\ s a -> s{_pgUploadType = a})

-- | Optional. A mask of what source types to return. Defaults to
-- READ_SOURCE_TYPE_PROFILE and READ_SOURCE_TYPE_CONTACT if not set.
pgSources :: Lens' PeopleGet [PeopleGetSources]
pgSources
  = lens _pgSources (\ s a -> s{_pgSources = a}) .
      _Default
      . _Coerce

-- | Required. A field mask to restrict which fields on the person are
-- returned. Multiple fields can be specified by separating them with
-- commas. Valid values are: * addresses * ageRanges * biographies *
-- birthdays * calendarUrls * clientData * coverPhotos * emailAddresses *
-- events * externalIds * genders * imClients * interests * locales *
-- locations * memberships * metadata * miscKeywords * names * nicknames *
-- occupations * organizations * phoneNumbers * photos * relations *
-- sipAddresses * skills * urls * userDefined
pgPersonFields :: Lens' PeopleGet (Maybe GFieldMask)
pgPersonFields
  = lens _pgPersonFields
      (\ s a -> s{_pgPersonFields = a})

-- | JSONP
pgCallback :: Lens' PeopleGet (Maybe Text)
pgCallback
  = lens _pgCallback (\ s a -> s{_pgCallback = a})

instance GoogleRequest PeopleGet where
        type Rs PeopleGet = Person
        type Scopes PeopleGet =
             '["https://www.googleapis.com/auth/contacts",
               "https://www.googleapis.com/auth/contacts.readonly",
               "https://www.googleapis.com/auth/directory.readonly",
               "https://www.googleapis.com/auth/user.addresses.read",
               "https://www.googleapis.com/auth/user.birthday.read",
               "https://www.googleapis.com/auth/user.emails.read",
               "https://www.googleapis.com/auth/user.gender.read",
               "https://www.googleapis.com/auth/user.organization.read",
               "https://www.googleapis.com/auth/user.phonenumbers.read",
               "https://www.googleapis.com/auth/userinfo.email",
               "https://www.googleapis.com/auth/userinfo.profile"]
        requestClient PeopleGet'{..}
          = go _pgResourceName _pgXgafv _pgUploadProtocol
              _pgRequestMaskIncludeField
              _pgAccessToken
              _pgUploadType
              (_pgSources ^. _Default)
              _pgPersonFields
              _pgCallback
              (Just AltJSON)
              peopleService
          where go
                  = buildClient (Proxy :: Proxy PeopleGetResource)
                      mempty
