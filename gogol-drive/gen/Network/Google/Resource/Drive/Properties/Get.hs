{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.Drive.Properties.Get
    (
    -- * REST Resource
      PropertiesGetResource

    -- * Creating a Request
    , propertiesGet'
    , PropertiesGet'

    -- * Request Lenses
    , pgQuotaUser
    , pgPrettyPrint
    , pgPropertyKey
    , pgUserIp
    , pgVisibility
    , pgKey
    , pgFileId
    , pgOauthToken
    , pgFields
    , pgAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePropertiesGet@ which the
-- 'PropertiesGet'' request conforms to.
type PropertiesGetResource =
     "files" :>
       Capture "fileId" Text :>
         "properties" :>
           Capture "propertyKey" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "visibility" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Property

-- | Gets a property by its key.
--
-- /See:/ 'propertiesGet'' smart constructor.
data PropertiesGet' = PropertiesGet'
    { _pgQuotaUser   :: !(Maybe Text)
    , _pgPrettyPrint :: !Bool
    , _pgPropertyKey :: !Text
    , _pgUserIp      :: !(Maybe Text)
    , _pgVisibility  :: !Text
    , _pgKey         :: !(Maybe Text)
    , _pgFileId      :: !Text
    , _pgOauthToken  :: !(Maybe Text)
    , _pgFields      :: !(Maybe Text)
    , _pgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PropertiesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgQuotaUser'
--
-- * 'pgPrettyPrint'
--
-- * 'pgPropertyKey'
--
-- * 'pgUserIp'
--
-- * 'pgVisibility'
--
-- * 'pgKey'
--
-- * 'pgFileId'
--
-- * 'pgOauthToken'
--
-- * 'pgFields'
--
-- * 'pgAlt'
propertiesGet'
    :: Text -- ^ 'propertyKey'
    -> Text -- ^ 'fileId'
    -> PropertiesGet'
propertiesGet' pPgPropertyKey_ pPgFileId_ =
    PropertiesGet'
    { _pgQuotaUser = Nothing
    , _pgPrettyPrint = True
    , _pgPropertyKey = pPgPropertyKey_
    , _pgUserIp = Nothing
    , _pgVisibility = "private"
    , _pgKey = Nothing
    , _pgFileId = pPgFileId_
    , _pgOauthToken = Nothing
    , _pgFields = Nothing
    , _pgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pgQuotaUser :: Lens' PropertiesGet' (Maybe Text)
pgQuotaUser
  = lens _pgQuotaUser (\ s a -> s{_pgQuotaUser = a})

-- | Returns response with indentations and line breaks.
pgPrettyPrint :: Lens' PropertiesGet' Bool
pgPrettyPrint
  = lens _pgPrettyPrint
      (\ s a -> s{_pgPrettyPrint = a})

-- | The key of the property.
pgPropertyKey :: Lens' PropertiesGet' Text
pgPropertyKey
  = lens _pgPropertyKey
      (\ s a -> s{_pgPropertyKey = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pgUserIp :: Lens' PropertiesGet' (Maybe Text)
pgUserIp = lens _pgUserIp (\ s a -> s{_pgUserIp = a})

-- | The visibility of the property.
pgVisibility :: Lens' PropertiesGet' Text
pgVisibility
  = lens _pgVisibility (\ s a -> s{_pgVisibility = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pgKey :: Lens' PropertiesGet' (Maybe Text)
pgKey = lens _pgKey (\ s a -> s{_pgKey = a})

-- | The ID of the file.
pgFileId :: Lens' PropertiesGet' Text
pgFileId = lens _pgFileId (\ s a -> s{_pgFileId = a})

-- | OAuth 2.0 token for the current user.
pgOauthToken :: Lens' PropertiesGet' (Maybe Text)
pgOauthToken
  = lens _pgOauthToken (\ s a -> s{_pgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
pgFields :: Lens' PropertiesGet' (Maybe Text)
pgFields = lens _pgFields (\ s a -> s{_pgFields = a})

-- | Data format for the response.
pgAlt :: Lens' PropertiesGet' Alt
pgAlt = lens _pgAlt (\ s a -> s{_pgAlt = a})

instance GoogleRequest PropertiesGet' where
        type Rs PropertiesGet' = Property
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PropertiesGet'{..}
          = go _pgQuotaUser (Just _pgPrettyPrint)
              _pgPropertyKey
              _pgUserIp
              (Just _pgVisibility)
              _pgKey
              _pgFileId
              _pgOauthToken
              _pgFields
              (Just _pgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PropertiesGetResource)
                      r
                      u
