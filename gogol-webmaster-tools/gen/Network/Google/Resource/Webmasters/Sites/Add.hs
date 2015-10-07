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
-- Module      : Network.Google.Resource.Webmasters.Sites.Add
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a site to the set of the user\'s sites in Webmaster Tools.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitesAdd@.
module Network.Google.Resource.Webmasters.Sites.Add
    (
    -- * REST Resource
      SitesAddResource

    -- * Creating a Request
    , sitesAdd'
    , SitesAdd'

    -- * Request Lenses
    , saQuotaUser
    , saPrettyPrint
    , saUserIP
    , saSiteURL
    , saKey
    , saOAuthToken
    , saFields
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitesAdd@ method which the
-- 'SitesAdd'' request conforms to.
type SitesAddResource =
     "sites" :>
       Capture "siteUrl" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Put '[JSON] ()

-- | Adds a site to the set of the user\'s sites in Webmaster Tools.
--
-- /See:/ 'sitesAdd'' smart constructor.
data SitesAdd' = SitesAdd'
    { _saQuotaUser   :: !(Maybe Text)
    , _saPrettyPrint :: !Bool
    , _saUserIP      :: !(Maybe Text)
    , _saSiteURL     :: !Text
    , _saKey         :: !(Maybe AuthKey)
    , _saOAuthToken  :: !(Maybe OAuthToken)
    , _saFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesAdd'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'saQuotaUser'
--
-- * 'saPrettyPrint'
--
-- * 'saUserIP'
--
-- * 'saSiteURL'
--
-- * 'saKey'
--
-- * 'saOAuthToken'
--
-- * 'saFields'
sitesAdd'
    :: Text -- ^ 'siteUrl'
    -> SitesAdd'
sitesAdd' pSaSiteURL_ =
    SitesAdd'
    { _saQuotaUser = Nothing
    , _saPrettyPrint = True
    , _saUserIP = Nothing
    , _saSiteURL = pSaSiteURL_
    , _saKey = Nothing
    , _saOAuthToken = Nothing
    , _saFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
saQuotaUser :: Lens' SitesAdd' (Maybe Text)
saQuotaUser
  = lens _saQuotaUser (\ s a -> s{_saQuotaUser = a})

-- | Returns response with indentations and line breaks.
saPrettyPrint :: Lens' SitesAdd' Bool
saPrettyPrint
  = lens _saPrettyPrint
      (\ s a -> s{_saPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
saUserIP :: Lens' SitesAdd' (Maybe Text)
saUserIP = lens _saUserIP (\ s a -> s{_saUserIP = a})

-- | The URL of the site to add.
saSiteURL :: Lens' SitesAdd' Text
saSiteURL
  = lens _saSiteURL (\ s a -> s{_saSiteURL = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
saKey :: Lens' SitesAdd' (Maybe AuthKey)
saKey = lens _saKey (\ s a -> s{_saKey = a})

-- | OAuth 2.0 token for the current user.
saOAuthToken :: Lens' SitesAdd' (Maybe OAuthToken)
saOAuthToken
  = lens _saOAuthToken (\ s a -> s{_saOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
saFields :: Lens' SitesAdd' (Maybe Text)
saFields = lens _saFields (\ s a -> s{_saFields = a})

instance GoogleAuth SitesAdd' where
        _AuthKey = saKey . _Just
        _AuthToken = saOAuthToken . _Just

instance GoogleRequest SitesAdd' where
        type Rs SitesAdd' = ()
        request = requestWith webmasterToolsRequest
        requestWith rq SitesAdd'{..}
          = go _saSiteURL _saQuotaUser (Just _saPrettyPrint)
              _saUserIP
              _saFields
              _saKey
              _saOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy SitesAddResource) rq
