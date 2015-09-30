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
-- Module      : Network.Google.Resource.Doubleclickbidmanager.Lineitems.Downloadlineitems
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves line items in CSV format.
--
-- /See:/ <https://developers.google.com/bid-manager/ DoubleClick Bid Manager API Reference> for @DoubleclickbidmanagerLineitemsDownloadlineitems@.
module Network.Google.Resource.Doubleclickbidmanager.Lineitems.Downloadlineitems
    (
    -- * REST Resource
      LineitemsDownloadlineitemsResource

    -- * Creating a Request
    , lineitemsDownloadlineitems'
    , LineitemsDownloadlineitems'

    -- * Request Lenses
    , ldQuotaUser
    , ldPrettyPrint
    , ldUserIp
    , ldKey
    , ldOauthToken
    , ldFields
    , ldAlt
    ) where

import           Network.Google.DoubleClickBids.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleclickbidmanagerLineitemsDownloadlineitems@ which the
-- 'LineitemsDownloadlineitems'' request conforms to.
type LineitemsDownloadlineitemsResource =
     "lineitems" :>
       "downloadlineitems" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] DownloadLineItemsResponse

-- | Retrieves line items in CSV format.
--
-- /See:/ 'lineitemsDownloadlineitems'' smart constructor.
data LineitemsDownloadlineitems' = LineitemsDownloadlineitems'
    { _ldQuotaUser   :: !(Maybe Text)
    , _ldPrettyPrint :: !Bool
    , _ldUserIp      :: !(Maybe Text)
    , _ldKey         :: !(Maybe Text)
    , _ldOauthToken  :: !(Maybe Text)
    , _ldFields      :: !(Maybe Text)
    , _ldAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'LineitemsDownloadlineitems'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ldQuotaUser'
--
-- * 'ldPrettyPrint'
--
-- * 'ldUserIp'
--
-- * 'ldKey'
--
-- * 'ldOauthToken'
--
-- * 'ldFields'
--
-- * 'ldAlt'
lineitemsDownloadlineitems'
    :: LineitemsDownloadlineitems'
lineitemsDownloadlineitems' =
    LineitemsDownloadlineitems'
    { _ldQuotaUser = Nothing
    , _ldPrettyPrint = True
    , _ldUserIp = Nothing
    , _ldKey = Nothing
    , _ldOauthToken = Nothing
    , _ldFields = Nothing
    , _ldAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ldQuotaUser :: Lens' LineitemsDownloadlineitems' (Maybe Text)
ldQuotaUser
  = lens _ldQuotaUser (\ s a -> s{_ldQuotaUser = a})

-- | Returns response with indentations and line breaks.
ldPrettyPrint :: Lens' LineitemsDownloadlineitems' Bool
ldPrettyPrint
  = lens _ldPrettyPrint
      (\ s a -> s{_ldPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ldUserIp :: Lens' LineitemsDownloadlineitems' (Maybe Text)
ldUserIp = lens _ldUserIp (\ s a -> s{_ldUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ldKey :: Lens' LineitemsDownloadlineitems' (Maybe Text)
ldKey = lens _ldKey (\ s a -> s{_ldKey = a})

-- | OAuth 2.0 token for the current user.
ldOauthToken :: Lens' LineitemsDownloadlineitems' (Maybe Text)
ldOauthToken
  = lens _ldOauthToken (\ s a -> s{_ldOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ldFields :: Lens' LineitemsDownloadlineitems' (Maybe Text)
ldFields = lens _ldFields (\ s a -> s{_ldFields = a})

-- | Data format for the response.
ldAlt :: Lens' LineitemsDownloadlineitems' Alt
ldAlt = lens _ldAlt (\ s a -> s{_ldAlt = a})

instance GoogleRequest LineitemsDownloadlineitems'
         where
        type Rs LineitemsDownloadlineitems' =
             DownloadLineItemsResponse
        request = requestWithRoute defReq doubleClickBidsURL
        requestWithRoute r u LineitemsDownloadlineitems'{..}
          = go _ldQuotaUser (Just _ldPrettyPrint) _ldUserIp
              _ldKey
              _ldOauthToken
              _ldFields
              (Just _ldAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy LineitemsDownloadlineitemsResource)
                      r
                      u
