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
-- Module      : Network.Google.Resource.Content.Datafeeds.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentDatafeedsCustombatch@.
module Network.Google.Resource.Content.Datafeeds.Custombatch
    (
    -- * REST Resource
      DatafeedsCustombatchResource

    -- * Creating a Request
    , datafeedsCustombatch'
    , DatafeedsCustombatch'

    -- * Request Lenses
    , datQuotaUser
    , datPrettyPrint
    , datUserIP
    , datPayload
    , datKey
    , datOAuthToken
    , datDryRun
    , datFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentDatafeedsCustombatch@ method which the
-- 'DatafeedsCustombatch'' request conforms to.
type DatafeedsCustombatchResource =
     "datafeeds" :>
       "batch" :>
         QueryParam "dryRun" Bool :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] DatafeedsCustomBatchRequest :>
                           Post '[JSON] DatafeedsCustomBatchResponse

--
-- /See:/ 'datafeedsCustombatch'' smart constructor.
data DatafeedsCustombatch' = DatafeedsCustombatch'
    { _datQuotaUser   :: !(Maybe Text)
    , _datPrettyPrint :: !Bool
    , _datUserIP      :: !(Maybe Text)
    , _datPayload     :: !DatafeedsCustomBatchRequest
    , _datKey         :: !(Maybe AuthKey)
    , _datOAuthToken  :: !(Maybe OAuthToken)
    , _datDryRun      :: !(Maybe Bool)
    , _datFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datQuotaUser'
--
-- * 'datPrettyPrint'
--
-- * 'datUserIP'
--
-- * 'datPayload'
--
-- * 'datKey'
--
-- * 'datOAuthToken'
--
-- * 'datDryRun'
--
-- * 'datFields'
datafeedsCustombatch'
    :: DatafeedsCustomBatchRequest -- ^ 'payload'
    -> DatafeedsCustombatch'
datafeedsCustombatch' pDatPayload_ =
    DatafeedsCustombatch'
    { _datQuotaUser = Nothing
    , _datPrettyPrint = True
    , _datUserIP = Nothing
    , _datPayload = pDatPayload_
    , _datKey = Nothing
    , _datOAuthToken = Nothing
    , _datDryRun = Nothing
    , _datFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
datQuotaUser :: Lens' DatafeedsCustombatch' (Maybe Text)
datQuotaUser
  = lens _datQuotaUser (\ s a -> s{_datQuotaUser = a})

-- | Returns response with indentations and line breaks.
datPrettyPrint :: Lens' DatafeedsCustombatch' Bool
datPrettyPrint
  = lens _datPrettyPrint
      (\ s a -> s{_datPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
datUserIP :: Lens' DatafeedsCustombatch' (Maybe Text)
datUserIP
  = lens _datUserIP (\ s a -> s{_datUserIP = a})

-- | Multipart request metadata.
datPayload :: Lens' DatafeedsCustombatch' DatafeedsCustomBatchRequest
datPayload
  = lens _datPayload (\ s a -> s{_datPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
datKey :: Lens' DatafeedsCustombatch' (Maybe AuthKey)
datKey = lens _datKey (\ s a -> s{_datKey = a})

-- | OAuth 2.0 token for the current user.
datOAuthToken :: Lens' DatafeedsCustombatch' (Maybe OAuthToken)
datOAuthToken
  = lens _datOAuthToken
      (\ s a -> s{_datOAuthToken = a})

-- | Flag to run the request in dry-run mode.
datDryRun :: Lens' DatafeedsCustombatch' (Maybe Bool)
datDryRun
  = lens _datDryRun (\ s a -> s{_datDryRun = a})

-- | Selector specifying which fields to include in a partial response.
datFields :: Lens' DatafeedsCustombatch' (Maybe Text)
datFields
  = lens _datFields (\ s a -> s{_datFields = a})

instance GoogleAuth DatafeedsCustombatch' where
        _AuthKey = datKey . _Just
        _AuthToken = datOAuthToken . _Just

instance GoogleRequest DatafeedsCustombatch' where
        type Rs DatafeedsCustombatch' =
             DatafeedsCustomBatchResponse
        request = requestWith shoppingContentRequest
        requestWith rq DatafeedsCustombatch'{..}
          = go _datDryRun _datQuotaUser (Just _datPrettyPrint)
              _datUserIP
              _datFields
              _datKey
              _datOAuthToken
              (Just AltJSON)
              _datPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy DatafeedsCustombatchResource)
                      rq
