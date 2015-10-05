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
-- Module      : Network.Google.Resource.Compute.Images.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an image resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeImagesInsert@.
module Network.Google.Resource.Compute.Images.Insert
    (
    -- * REST Resource
      ImagesInsertResource

    -- * Creating a Request
    , imagesInsert'
    , ImagesInsert'

    -- * Request Lenses
    , iQuotaUser
    , iPrettyPrint
    , iProject
    , iUserIP
    , iPayload
    , iKey
    , iOAuthToken
    , iFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeImagesInsert@ which the
-- 'ImagesInsert'' request conforms to.
type ImagesInsertResource =
     Capture "project" Text :>
       "global" :>
         "images" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Image :> Post '[JSON] Operation

-- | Creates an image resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'imagesInsert'' smart constructor.
data ImagesInsert' = ImagesInsert'
    { _iQuotaUser   :: !(Maybe Text)
    , _iPrettyPrint :: !Bool
    , _iProject     :: !Text
    , _iUserIP      :: !(Maybe Text)
    , _iPayload     :: !Image
    , _iKey         :: !(Maybe AuthKey)
    , _iOAuthToken  :: !(Maybe OAuthToken)
    , _iFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iQuotaUser'
--
-- * 'iPrettyPrint'
--
-- * 'iProject'
--
-- * 'iUserIP'
--
-- * 'iPayload'
--
-- * 'iKey'
--
-- * 'iOAuthToken'
--
-- * 'iFields'
imagesInsert'
    :: Text -- ^ 'project'
    -> Image -- ^ 'payload'
    -> ImagesInsert'
imagesInsert' pIProject_ pIPayload_ =
    ImagesInsert'
    { _iQuotaUser = Nothing
    , _iPrettyPrint = True
    , _iProject = pIProject_
    , _iUserIP = Nothing
    , _iPayload = pIPayload_
    , _iKey = Nothing
    , _iOAuthToken = Nothing
    , _iFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iQuotaUser :: Lens' ImagesInsert' (Maybe Text)
iQuotaUser
  = lens _iQuotaUser (\ s a -> s{_iQuotaUser = a})

-- | Returns response with indentations and line breaks.
iPrettyPrint :: Lens' ImagesInsert' Bool
iPrettyPrint
  = lens _iPrettyPrint (\ s a -> s{_iPrettyPrint = a})

-- | Project ID for this request.
iProject :: Lens' ImagesInsert' Text
iProject = lens _iProject (\ s a -> s{_iProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iUserIP :: Lens' ImagesInsert' (Maybe Text)
iUserIP = lens _iUserIP (\ s a -> s{_iUserIP = a})

-- | Multipart request metadata.
iPayload :: Lens' ImagesInsert' Image
iPayload = lens _iPayload (\ s a -> s{_iPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iKey :: Lens' ImagesInsert' (Maybe AuthKey)
iKey = lens _iKey (\ s a -> s{_iKey = a})

-- | OAuth 2.0 token for the current user.
iOAuthToken :: Lens' ImagesInsert' (Maybe OAuthToken)
iOAuthToken
  = lens _iOAuthToken (\ s a -> s{_iOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iFields :: Lens' ImagesInsert' (Maybe Text)
iFields = lens _iFields (\ s a -> s{_iFields = a})

instance GoogleAuth ImagesInsert' where
        authKey = iKey . _Just
        authToken = iOAuthToken . _Just

instance GoogleRequest ImagesInsert' where
        type Rs ImagesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesInsert'{..}
          = go _iProject _iQuotaUser (Just _iPrettyPrint)
              _iUserIP
              _iFields
              _iKey
              _iOAuthToken
              (Just AltJSON)
              _iPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ImagesInsertResource)
                      r
                      u
