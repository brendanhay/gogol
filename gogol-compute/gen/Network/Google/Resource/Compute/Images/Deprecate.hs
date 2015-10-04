{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Images.Deprecate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the deprecation status of an image. If an empty request body is
-- given, clears the deprecation status instead.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeImagesDeprecate@.
module Network.Google.Resource.Compute.Images.Deprecate
    (
    -- * REST Resource
      ImagesDeprecateResource

    -- * Creating a Request
    , imagesDeprecate'
    , ImagesDeprecate'

    -- * Request Lenses
    , imamQuotaUser
    , imamImage
    , imamPrettyPrint
    , imamProject
    , imamUserIP
    , imamPayload
    , imamKey
    , imamOAuthToken
    , imamFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeImagesDeprecate@ which the
-- 'ImagesDeprecate'' request conforms to.
type ImagesDeprecateResource =
     Capture "project" Text :>
       "global" :>
         "images" :>
           Capture "image" Text :>
             "deprecate" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[OctetStream] DeprecationStatus :>
                               Post '[JSON] Operation

-- | Sets the deprecation status of an image. If an empty request body is
-- given, clears the deprecation status instead.
--
-- /See:/ 'imagesDeprecate'' smart constructor.
data ImagesDeprecate' = ImagesDeprecate'
    { _imamQuotaUser   :: !(Maybe Text)
    , _imamImage       :: !Text
    , _imamPrettyPrint :: !Bool
    , _imamProject     :: !Text
    , _imamUserIP      :: !(Maybe Text)
    , _imamPayload     :: !DeprecationStatus
    , _imamKey         :: !(Maybe Key)
    , _imamOAuthToken  :: !(Maybe OAuthToken)
    , _imamFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesDeprecate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imamQuotaUser'
--
-- * 'imamImage'
--
-- * 'imamPrettyPrint'
--
-- * 'imamProject'
--
-- * 'imamUserIP'
--
-- * 'imamPayload'
--
-- * 'imamKey'
--
-- * 'imamOAuthToken'
--
-- * 'imamFields'
imagesDeprecate'
    :: Text -- ^ 'image'
    -> Text -- ^ 'project'
    -> DeprecationStatus -- ^ 'payload'
    -> ImagesDeprecate'
imagesDeprecate' pImamImage_ pImamProject_ pImamPayload_ =
    ImagesDeprecate'
    { _imamQuotaUser = Nothing
    , _imamImage = pImamImage_
    , _imamPrettyPrint = True
    , _imamProject = pImamProject_
    , _imamUserIP = Nothing
    , _imamPayload = pImamPayload_
    , _imamKey = Nothing
    , _imamOAuthToken = Nothing
    , _imamFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
imamQuotaUser :: Lens' ImagesDeprecate' (Maybe Text)
imamQuotaUser
  = lens _imamQuotaUser
      (\ s a -> s{_imamQuotaUser = a})

-- | Image name.
imamImage :: Lens' ImagesDeprecate' Text
imamImage
  = lens _imamImage (\ s a -> s{_imamImage = a})

-- | Returns response with indentations and line breaks.
imamPrettyPrint :: Lens' ImagesDeprecate' Bool
imamPrettyPrint
  = lens _imamPrettyPrint
      (\ s a -> s{_imamPrettyPrint = a})

-- | Project ID for this request.
imamProject :: Lens' ImagesDeprecate' Text
imamProject
  = lens _imamProject (\ s a -> s{_imamProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
imamUserIP :: Lens' ImagesDeprecate' (Maybe Text)
imamUserIP
  = lens _imamUserIP (\ s a -> s{_imamUserIP = a})

-- | Multipart request metadata.
imamPayload :: Lens' ImagesDeprecate' DeprecationStatus
imamPayload
  = lens _imamPayload (\ s a -> s{_imamPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
imamKey :: Lens' ImagesDeprecate' (Maybe Key)
imamKey = lens _imamKey (\ s a -> s{_imamKey = a})

-- | OAuth 2.0 token for the current user.
imamOAuthToken :: Lens' ImagesDeprecate' (Maybe OAuthToken)
imamOAuthToken
  = lens _imamOAuthToken
      (\ s a -> s{_imamOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
imamFields :: Lens' ImagesDeprecate' (Maybe Text)
imamFields
  = lens _imamFields (\ s a -> s{_imamFields = a})

instance GoogleAuth ImagesDeprecate' where
        authKey = imamKey . _Just
        authToken = imamOAuthToken . _Just

instance GoogleRequest ImagesDeprecate' where
        type Rs ImagesDeprecate' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesDeprecate'{..}
          = go _imamProject _imamImage _imamQuotaUser
              (Just _imamPrettyPrint)
              _imamUserIP
              _imamFields
              _imamKey
              _imamOAuthToken
              (Just AltJSON)
              _imamPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ImagesDeprecateResource)
                      r
                      u
