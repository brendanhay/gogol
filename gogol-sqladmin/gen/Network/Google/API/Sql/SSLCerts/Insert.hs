{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.SSLCerts.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an SSL certificate and returns it along with the private key and
-- server certificate authority. The new certificate will not be usable
-- until the instance is restarted.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.sslCerts.insert@.
module Network.Google.API.Sql.SSLCerts.Insert
    (
    -- * REST Resource
      SSLCertsInsertAPI

    -- * Creating a Request
    , sSLCertsInsert'
    , SSLCertsInsert'

    -- * Request Lenses
    , sciQuotaUser
    , sciPrettyPrint
    , sciProject
    , sciUserIp
    , sciKey
    , sciOauthToken
    , sciFields
    , sciAlt
    , sciInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.sslCerts.insert which the
-- 'SSLCertsInsert'' request conforms to.
type SSLCertsInsertAPI =
     "projects" :>
       Capture "project" Text :>
         "instances" :>
           Capture "instance" Text :>
             "sslCerts" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Post '[JSON] SslCertsInsertResponse

-- | Creates an SSL certificate and returns it along with the private key and
-- server certificate authority. The new certificate will not be usable
-- until the instance is restarted.
--
-- /See:/ 'sSLCertsInsert'' smart constructor.
data SSLCertsInsert' = SSLCertsInsert'
    { _sciQuotaUser   :: !(Maybe Text)
    , _sciPrettyPrint :: !Bool
    , _sciProject     :: !Text
    , _sciUserIp      :: !(Maybe Text)
    , _sciKey         :: !(Maybe Text)
    , _sciOauthToken  :: !(Maybe Text)
    , _sciFields      :: !(Maybe Text)
    , _sciAlt         :: !Alt
    , _sciInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sciQuotaUser'
--
-- * 'sciPrettyPrint'
--
-- * 'sciProject'
--
-- * 'sciUserIp'
--
-- * 'sciKey'
--
-- * 'sciOauthToken'
--
-- * 'sciFields'
--
-- * 'sciAlt'
--
-- * 'sciInstance'
sSLCertsInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> SSLCertsInsert'
sSLCertsInsert' pSciProject_ pSciInstance_ =
    SSLCertsInsert'
    { _sciQuotaUser = Nothing
    , _sciPrettyPrint = True
    , _sciProject = pSciProject_
    , _sciUserIp = Nothing
    , _sciKey = Nothing
    , _sciOauthToken = Nothing
    , _sciFields = Nothing
    , _sciAlt = JSON
    , _sciInstance = pSciInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sciQuotaUser :: Lens' SSLCertsInsert' (Maybe Text)
sciQuotaUser
  = lens _sciQuotaUser (\ s a -> s{_sciQuotaUser = a})

-- | Returns response with indentations and line breaks.
sciPrettyPrint :: Lens' SSLCertsInsert' Bool
sciPrettyPrint
  = lens _sciPrettyPrint
      (\ s a -> s{_sciPrettyPrint = a})

-- | Project ID of the project to which the newly created Cloud SQL instances
-- should belong.
sciProject :: Lens' SSLCertsInsert' Text
sciProject
  = lens _sciProject (\ s a -> s{_sciProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sciUserIp :: Lens' SSLCertsInsert' (Maybe Text)
sciUserIp
  = lens _sciUserIp (\ s a -> s{_sciUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sciKey :: Lens' SSLCertsInsert' (Maybe Text)
sciKey = lens _sciKey (\ s a -> s{_sciKey = a})

-- | OAuth 2.0 token for the current user.
sciOauthToken :: Lens' SSLCertsInsert' (Maybe Text)
sciOauthToken
  = lens _sciOauthToken
      (\ s a -> s{_sciOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sciFields :: Lens' SSLCertsInsert' (Maybe Text)
sciFields
  = lens _sciFields (\ s a -> s{_sciFields = a})

-- | Data format for the response.
sciAlt :: Lens' SSLCertsInsert' Alt
sciAlt = lens _sciAlt (\ s a -> s{_sciAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
sciInstance :: Lens' SSLCertsInsert' Text
sciInstance
  = lens _sciInstance (\ s a -> s{_sciInstance = a})

instance GoogleRequest SSLCertsInsert' where
        type Rs SSLCertsInsert' = SslCertsInsertResponse
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u SSLCertsInsert'{..}
          = go _sciQuotaUser (Just _sciPrettyPrint) _sciProject
              _sciUserIp
              _sciKey
              _sciOauthToken
              _sciFields
              (Just _sciAlt)
              _sciInstance
          where go
                  = clientWithRoute (Proxy :: Proxy SSLCertsInsertAPI)
                      r
                      u
