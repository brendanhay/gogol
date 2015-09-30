{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Properties.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets a property by its key.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePropertiesGet@.
module Drive.Properties.Get
    (
    -- * REST Resource
      PropertiesGetAPI

    -- * Creating a Request
    , propertiesGet
    , PropertiesGet

    -- * Request Lenses
    , pg1QuotaUser
    , pg1PrettyPrint
    , pg1PropertyKey
    , pg1UserIp
    , pg1Visibility
    , pg1Key
    , pg1FileId
    , pg1OauthToken
    , pg1Fields
    , pg1Alt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesGet@ which the
-- 'PropertiesGet' request conforms to.
type PropertiesGetAPI =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           Capture "propertyKey" Text :>
             QueryParam "visibility" Text :> Get '[JSON] Property

-- | Gets a property by its key.
--
-- /See:/ 'propertiesGet' smart constructor.
data PropertiesGet = PropertiesGet
    { _pg1QuotaUser   :: !(Maybe Text)
    , _pg1PrettyPrint :: !Bool
    , _pg1PropertyKey :: !Text
    , _pg1UserIp      :: !(Maybe Text)
    , _pg1Visibility  :: !Text
    , _pg1Key         :: !(Maybe Text)
    , _pg1FileId      :: !Text
    , _pg1OauthToken  :: !(Maybe Text)
    , _pg1Fields      :: !(Maybe Text)
    , _pg1Alt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pg1QuotaUser'
--
-- * 'pg1PrettyPrint'
--
-- * 'pg1PropertyKey'
--
-- * 'pg1UserIp'
--
-- * 'pg1Visibility'
--
-- * 'pg1Key'
--
-- * 'pg1FileId'
--
-- * 'pg1OauthToken'
--
-- * 'pg1Fields'
--
-- * 'pg1Alt'
propertiesGet
    :: Text -- ^ 'propertyKey'
    -> Text -- ^ 'fileId'
    -> PropertiesGet
propertiesGet pPg1PropertyKey_ pPg1FileId_ =
    PropertiesGet
    { _pg1QuotaUser = Nothing
    , _pg1PrettyPrint = True
    , _pg1PropertyKey = pPg1PropertyKey_
    , _pg1UserIp = Nothing
    , _pg1Visibility = "private"
    , _pg1Key = Nothing
    , _pg1FileId = pPg1FileId_
    , _pg1OauthToken = Nothing
    , _pg1Fields = Nothing
    , _pg1Alt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pg1QuotaUser :: Lens' PropertiesGet' (Maybe Text)
pg1QuotaUser
  = lens _pg1QuotaUser (\ s a -> s{_pg1QuotaUser = a})

-- | Returns response with indentations and line breaks.
pg1PrettyPrint :: Lens' PropertiesGet' Bool
pg1PrettyPrint
  = lens _pg1PrettyPrint
      (\ s a -> s{_pg1PrettyPrint = a})

-- | The key of the property.
pg1PropertyKey :: Lens' PropertiesGet' Text
pg1PropertyKey
  = lens _pg1PropertyKey
      (\ s a -> s{_pg1PropertyKey = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pg1UserIp :: Lens' PropertiesGet' (Maybe Text)
pg1UserIp
  = lens _pg1UserIp (\ s a -> s{_pg1UserIp = a})

-- | The visibility of the property.
pg1Visibility :: Lens' PropertiesGet' Text
pg1Visibility
  = lens _pg1Visibility
      (\ s a -> s{_pg1Visibility = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pg1Key :: Lens' PropertiesGet' (Maybe Text)
pg1Key = lens _pg1Key (\ s a -> s{_pg1Key = a})

-- | The ID of the file.
pg1FileId :: Lens' PropertiesGet' Text
pg1FileId
  = lens _pg1FileId (\ s a -> s{_pg1FileId = a})

-- | OAuth 2.0 token for the current user.
pg1OauthToken :: Lens' PropertiesGet' (Maybe Text)
pg1OauthToken
  = lens _pg1OauthToken
      (\ s a -> s{_pg1OauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pg1Fields :: Lens' PropertiesGet' (Maybe Text)
pg1Fields
  = lens _pg1Fields (\ s a -> s{_pg1Fields = a})

-- | Data format for the response.
pg1Alt :: Lens' PropertiesGet' Text
pg1Alt = lens _pg1Alt (\ s a -> s{_pg1Alt = a})

instance GoogleRequest PropertiesGet' where
        type Rs PropertiesGet' = Property
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesGet{..}
          = go _pg1QuotaUser _pg1PrettyPrint _pg1PropertyKey
              _pg1UserIp
              (Just _pg1Visibility)
              _pg1Key
              _pg1FileId
              _pg1OauthToken
              _pg1Fields
              _pg1Alt
          where go
                  = clientWithRoute (Proxy :: Proxy PropertiesGetAPI) r
                      u
