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
-- Module      : Network.Google.Resource.PlusDomains.Circles.Remove
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a circle.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @PlusDomainsCirclesRemove@.
module Network.Google.Resource.PlusDomains.Circles.Remove
    (
    -- * REST Resource
      CirclesRemoveResource

    -- * Creating a Request
    , circlesRemove'
    , CirclesRemove'

    -- * Request Lenses
    , crQuotaUser
    , crPrettyPrint
    , crUserIP
    , crKey
    , crCircleId
    , crOAuthToken
    , crFields
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for @PlusDomainsCirclesRemove@ which the
-- 'CirclesRemove'' request conforms to.
type CirclesRemoveResource =
     "circles" :>
       Capture "circleId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a circle.
--
-- /See:/ 'circlesRemove'' smart constructor.
data CirclesRemove' = CirclesRemove'
    { _crQuotaUser   :: !(Maybe Text)
    , _crPrettyPrint :: !Bool
    , _crUserIP      :: !(Maybe Text)
    , _crKey         :: !(Maybe AuthKey)
    , _crCircleId    :: !Text
    , _crOAuthToken  :: !(Maybe OAuthToken)
    , _crFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CirclesRemove'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crQuotaUser'
--
-- * 'crPrettyPrint'
--
-- * 'crUserIP'
--
-- * 'crKey'
--
-- * 'crCircleId'
--
-- * 'crOAuthToken'
--
-- * 'crFields'
circlesRemove'
    :: Text -- ^ 'circleId'
    -> CirclesRemove'
circlesRemove' pCrCircleId_ =
    CirclesRemove'
    { _crQuotaUser = Nothing
    , _crPrettyPrint = True
    , _crUserIP = Nothing
    , _crKey = Nothing
    , _crCircleId = pCrCircleId_
    , _crOAuthToken = Nothing
    , _crFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
crQuotaUser :: Lens' CirclesRemove' (Maybe Text)
crQuotaUser
  = lens _crQuotaUser (\ s a -> s{_crQuotaUser = a})

-- | Returns response with indentations and line breaks.
crPrettyPrint :: Lens' CirclesRemove' Bool
crPrettyPrint
  = lens _crPrettyPrint
      (\ s a -> s{_crPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
crUserIP :: Lens' CirclesRemove' (Maybe Text)
crUserIP = lens _crUserIP (\ s a -> s{_crUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
crKey :: Lens' CirclesRemove' (Maybe AuthKey)
crKey = lens _crKey (\ s a -> s{_crKey = a})

-- | The ID of the circle to delete.
crCircleId :: Lens' CirclesRemove' Text
crCircleId
  = lens _crCircleId (\ s a -> s{_crCircleId = a})

-- | OAuth 2.0 token for the current user.
crOAuthToken :: Lens' CirclesRemove' (Maybe OAuthToken)
crOAuthToken
  = lens _crOAuthToken (\ s a -> s{_crOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
crFields :: Lens' CirclesRemove' (Maybe Text)
crFields = lens _crFields (\ s a -> s{_crFields = a})

instance GoogleAuth CirclesRemove' where
        authKey = crKey . _Just
        authToken = crOAuthToken . _Just

instance GoogleRequest CirclesRemove' where
        type Rs CirclesRemove' = ()
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u CirclesRemove'{..}
          = go _crCircleId _crQuotaUser (Just _crPrettyPrint)
              _crUserIP
              _crFields
              _crKey
              _crOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CirclesRemoveResource)
                      r
                      u
