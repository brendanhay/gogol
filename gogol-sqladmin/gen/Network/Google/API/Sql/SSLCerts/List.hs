{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Sql.SSLCerts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all of the current SSL certificates for the instance.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @sql.sslCerts.list@.
module Network.Google.API.Sql.SSLCerts.List
    (
    -- * REST Resource
      SSLCertsListAPI

    -- * Creating a Request
    , sSLCertsList'
    , SSLCertsList'

    -- * Request Lenses
    , sclQuotaUser
    , sclPrettyPrint
    , sclProject
    , sclUserIp
    , sclKey
    , sclOauthToken
    , sclFields
    , sclAlt
    , sclInstance
    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for sql.sslCerts.list which the
-- 'SSLCertsList'' request conforms to.
type SSLCertsListAPI =
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
                             Get '[JSON] SslCertsListResponse

-- | Lists all of the current SSL certificates for the instance.
--
-- /See:/ 'sSLCertsList'' smart constructor.
data SSLCertsList' = SSLCertsList'
    { _sclQuotaUser   :: !(Maybe Text)
    , _sclPrettyPrint :: !Bool
    , _sclProject     :: !Text
    , _sclUserIp      :: !(Maybe Text)
    , _sclKey         :: !(Maybe Text)
    , _sclOauthToken  :: !(Maybe Text)
    , _sclFields      :: !(Maybe Text)
    , _sclAlt         :: !Alt
    , _sclInstance    :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SSLCertsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclQuotaUser'
--
-- * 'sclPrettyPrint'
--
-- * 'sclProject'
--
-- * 'sclUserIp'
--
-- * 'sclKey'
--
-- * 'sclOauthToken'
--
-- * 'sclFields'
--
-- * 'sclAlt'
--
-- * 'sclInstance'
sSLCertsList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'instance'
    -> SSLCertsList'
sSLCertsList' pSclProject_ pSclInstance_ =
    SSLCertsList'
    { _sclQuotaUser = Nothing
    , _sclPrettyPrint = True
    , _sclProject = pSclProject_
    , _sclUserIp = Nothing
    , _sclKey = Nothing
    , _sclOauthToken = Nothing
    , _sclFields = Nothing
    , _sclAlt = JSON
    , _sclInstance = pSclInstance_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sclQuotaUser :: Lens' SSLCertsList' (Maybe Text)
sclQuotaUser
  = lens _sclQuotaUser (\ s a -> s{_sclQuotaUser = a})

-- | Returns response with indentations and line breaks.
sclPrettyPrint :: Lens' SSLCertsList' Bool
sclPrettyPrint
  = lens _sclPrettyPrint
      (\ s a -> s{_sclPrettyPrint = a})

-- | Project ID of the project for which to list Cloud SQL instances.
sclProject :: Lens' SSLCertsList' Text
sclProject
  = lens _sclProject (\ s a -> s{_sclProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sclUserIp :: Lens' SSLCertsList' (Maybe Text)
sclUserIp
  = lens _sclUserIp (\ s a -> s{_sclUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sclKey :: Lens' SSLCertsList' (Maybe Text)
sclKey = lens _sclKey (\ s a -> s{_sclKey = a})

-- | OAuth 2.0 token for the current user.
sclOauthToken :: Lens' SSLCertsList' (Maybe Text)
sclOauthToken
  = lens _sclOauthToken
      (\ s a -> s{_sclOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sclFields :: Lens' SSLCertsList' (Maybe Text)
sclFields
  = lens _sclFields (\ s a -> s{_sclFields = a})

-- | Data format for the response.
sclAlt :: Lens' SSLCertsList' Alt
sclAlt = lens _sclAlt (\ s a -> s{_sclAlt = a})

-- | Cloud SQL instance ID. This does not include the project ID.
sclInstance :: Lens' SSLCertsList' Text
sclInstance
  = lens _sclInstance (\ s a -> s{_sclInstance = a})

instance GoogleRequest SSLCertsList' where
        type Rs SSLCertsList' = SslCertsListResponse
        request = requestWithRoute defReq sQLAdminURL
        requestWithRoute r u SSLCertsList'{..}
          = go _sclQuotaUser (Just _sclPrettyPrint) _sclProject
              _sclUserIp
              _sclKey
              _sclOauthToken
              _sclFields
              (Just _sclAlt)
              _sclInstance
          where go
                  = clientWithRoute (Proxy :: Proxy SSLCertsListAPI) r
                      u
