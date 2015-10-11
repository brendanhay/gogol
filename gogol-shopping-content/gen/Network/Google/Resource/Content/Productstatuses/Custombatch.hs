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
-- Module      : Network.Google.Resource.Content.Productstatuses.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the statuses of multiple products in a single request.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentProductstatusesCustombatch@.
module Network.Google.Resource.Content.Productstatuses.Custombatch
    (
    -- * REST Resource
      ProductstatusesCustombatchResource

    -- * Creating a Request
    , productstatusesCustombatch'
    , ProductstatusesCustombatch'

    -- * Request Lenses
    , pcQuotaUser
    , pcPrettyPrint
    , pcUserIP
    , pcPayload
    , pcKey
    , pcOAuthToken
    , pcFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentProductstatusesCustombatch@ method which the
-- 'ProductstatusesCustombatch'' request conforms to.
type ProductstatusesCustombatchResource =
     "productstatuses" :>
       "batch" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ProductstatusesCustomBatchRequest :>
                         Post '[JSON] ProductstatusesCustomBatchResponse

-- | Gets the statuses of multiple products in a single request.
--
-- /See:/ 'productstatusesCustombatch'' smart constructor.
data ProductstatusesCustombatch' = ProductstatusesCustombatch'
    { _pcQuotaUser   :: !(Maybe Text)
    , _pcPrettyPrint :: !Bool
    , _pcUserIP      :: !(Maybe Text)
    , _pcPayload     :: !ProductstatusesCustomBatchRequest
    , _pcKey         :: !(Maybe AuthKey)
    , _pcOAuthToken  :: !(Maybe OAuthToken)
    , _pcFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductstatusesCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcQuotaUser'
--
-- * 'pcPrettyPrint'
--
-- * 'pcUserIP'
--
-- * 'pcPayload'
--
-- * 'pcKey'
--
-- * 'pcOAuthToken'
--
-- * 'pcFields'
productstatusesCustombatch'
    :: ProductstatusesCustomBatchRequest -- ^ 'payload'
    -> ProductstatusesCustombatch'
productstatusesCustombatch' pPcPayload_ =
    ProductstatusesCustombatch'
    { _pcQuotaUser = Nothing
    , _pcPrettyPrint = True
    , _pcUserIP = Nothing
    , _pcPayload = pPcPayload_
    , _pcKey = Nothing
    , _pcOAuthToken = Nothing
    , _pcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pcQuotaUser :: Lens' ProductstatusesCustombatch' (Maybe Text)
pcQuotaUser
  = lens _pcQuotaUser (\ s a -> s{_pcQuotaUser = a})

-- | Returns response with indentations and line breaks.
pcPrettyPrint :: Lens' ProductstatusesCustombatch' Bool
pcPrettyPrint
  = lens _pcPrettyPrint
      (\ s a -> s{_pcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pcUserIP :: Lens' ProductstatusesCustombatch' (Maybe Text)
pcUserIP = lens _pcUserIP (\ s a -> s{_pcUserIP = a})

-- | Multipart request metadata.
pcPayload :: Lens' ProductstatusesCustombatch' ProductstatusesCustomBatchRequest
pcPayload
  = lens _pcPayload (\ s a -> s{_pcPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pcKey :: Lens' ProductstatusesCustombatch' (Maybe AuthKey)
pcKey = lens _pcKey (\ s a -> s{_pcKey = a})

-- | OAuth 2.0 token for the current user.
pcOAuthToken :: Lens' ProductstatusesCustombatch' (Maybe OAuthToken)
pcOAuthToken
  = lens _pcOAuthToken (\ s a -> s{_pcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
pcFields :: Lens' ProductstatusesCustombatch' (Maybe Text)
pcFields = lens _pcFields (\ s a -> s{_pcFields = a})

instance GoogleAuth ProductstatusesCustombatch' where
        _AuthKey = pcKey . _Just
        _AuthToken = pcOAuthToken . _Just

instance GoogleRequest ProductstatusesCustombatch'
         where
        type Rs ProductstatusesCustombatch' =
             ProductstatusesCustomBatchResponse
        request = requestWith shoppingContentRequest
        requestWith rq ProductstatusesCustombatch'{..}
          = go _pcQuotaUser (Just _pcPrettyPrint) _pcUserIP
              _pcFields
              _pcKey
              _pcOAuthToken
              (Just AltJSON)
              _pcPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy ProductstatusesCustombatchResource)
                      rq
