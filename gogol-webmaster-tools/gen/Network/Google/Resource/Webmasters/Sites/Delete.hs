{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Webmasters.Sites.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes a site from the set of the user\'s Webmaster Tools sites.
--
-- /See:/ <https://developers.google.com/webmaster-tools/ Webmaster Tools API Reference> for @WebmastersSitesDelete@.
module Webmasters.Sites.Delete
    (
    -- * REST Resource
      SitesDeleteAPI

    -- * Creating a Request
    , sitesDelete
    , SitesDelete

    -- * Request Lenses
    , sddQuotaUser
    , sddPrettyPrint
    , sddUserIp
    , sddSiteUrl
    , sddKey
    , sddOauthToken
    , sddFields
    , sddAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.WebmasterTools.Types

-- | A resource alias for @WebmastersSitesDelete@ which the
-- 'SitesDelete' request conforms to.
type SitesDeleteAPI =
     "sites" :>
       Capture "siteUrl" Text :> Delete '[JSON] ()

-- | Removes a site from the set of the user\'s Webmaster Tools sites.
--
-- /See:/ 'sitesDelete' smart constructor.
data SitesDelete = SitesDelete
    { _sddQuotaUser   :: !(Maybe Text)
    , _sddPrettyPrint :: !Bool
    , _sddUserIp      :: !(Maybe Text)
    , _sddSiteUrl     :: !Text
    , _sddKey         :: !(Maybe Text)
    , _sddOauthToken  :: !(Maybe Text)
    , _sddFields      :: !(Maybe Text)
    , _sddAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sddQuotaUser'
--
-- * 'sddPrettyPrint'
--
-- * 'sddUserIp'
--
-- * 'sddSiteUrl'
--
-- * 'sddKey'
--
-- * 'sddOauthToken'
--
-- * 'sddFields'
--
-- * 'sddAlt'
sitesDelete
    :: Text -- ^ 'siteUrl'
    -> SitesDelete
sitesDelete pSddSiteUrl_ =
    SitesDelete
    { _sddQuotaUser = Nothing
    , _sddPrettyPrint = True
    , _sddUserIp = Nothing
    , _sddSiteUrl = pSddSiteUrl_
    , _sddKey = Nothing
    , _sddOauthToken = Nothing
    , _sddFields = Nothing
    , _sddAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sddQuotaUser :: Lens' SitesDelete' (Maybe Text)
sddQuotaUser
  = lens _sddQuotaUser (\ s a -> s{_sddQuotaUser = a})

-- | Returns response with indentations and line breaks.
sddPrettyPrint :: Lens' SitesDelete' Bool
sddPrettyPrint
  = lens _sddPrettyPrint
      (\ s a -> s{_sddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sddUserIp :: Lens' SitesDelete' (Maybe Text)
sddUserIp
  = lens _sddUserIp (\ s a -> s{_sddUserIp = a})

-- | The URI of the property as defined in Search Console. Examples:
-- http:\/\/www.example.com\/ or android-app:\/\/com.example\/
sddSiteUrl :: Lens' SitesDelete' Text
sddSiteUrl
  = lens _sddSiteUrl (\ s a -> s{_sddSiteUrl = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sddKey :: Lens' SitesDelete' (Maybe Text)
sddKey = lens _sddKey (\ s a -> s{_sddKey = a})

-- | OAuth 2.0 token for the current user.
sddOauthToken :: Lens' SitesDelete' (Maybe Text)
sddOauthToken
  = lens _sddOauthToken
      (\ s a -> s{_sddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sddFields :: Lens' SitesDelete' (Maybe Text)
sddFields
  = lens _sddFields (\ s a -> s{_sddFields = a})

-- | Data format for the response.
sddAlt :: Lens' SitesDelete' Text
sddAlt = lens _sddAlt (\ s a -> s{_sddAlt = a})

instance GoogleRequest SitesDelete' where
        type Rs SitesDelete' = ()
        request = requestWithRoute defReq webmasterToolsURL
        requestWithRoute r u SitesDelete{..}
          = go _sddQuotaUser _sddPrettyPrint _sddUserIp
              _sddSiteUrl
              _sddKey
              _sddOauthToken
              _sddFields
              _sddAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SitesDeleteAPI) r u
