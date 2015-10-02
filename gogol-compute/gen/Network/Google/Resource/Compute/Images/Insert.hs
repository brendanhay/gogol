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
    , imaQuotaUser
    , imaPrettyPrint
    , imaImage
    , imaProject
    , imaUserIP
    , imaKey
    , imaOAuthToken
    , imaFields
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
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Image :> Post '[JSON] Operation

-- | Creates an image resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'imagesInsert'' smart constructor.
data ImagesInsert' = ImagesInsert'
    { _imaQuotaUser   :: !(Maybe Text)
    , _imaPrettyPrint :: !Bool
    , _imaImage       :: !Image
    , _imaProject     :: !Text
    , _imaUserIP      :: !(Maybe Text)
    , _imaKey         :: !(Maybe Key)
    , _imaOAuthToken  :: !(Maybe OAuthToken)
    , _imaFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imaQuotaUser'
--
-- * 'imaPrettyPrint'
--
-- * 'imaImage'
--
-- * 'imaProject'
--
-- * 'imaUserIP'
--
-- * 'imaKey'
--
-- * 'imaOAuthToken'
--
-- * 'imaFields'
imagesInsert'
    :: Image -- ^ 'Image'
    -> Text -- ^ 'project'
    -> ImagesInsert'
imagesInsert' pImaImage_ pImaProject_ =
    ImagesInsert'
    { _imaQuotaUser = Nothing
    , _imaPrettyPrint = True
    , _imaImage = pImaImage_
    , _imaProject = pImaProject_
    , _imaUserIP = Nothing
    , _imaKey = Nothing
    , _imaOAuthToken = Nothing
    , _imaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
imaQuotaUser :: Lens' ImagesInsert' (Maybe Text)
imaQuotaUser
  = lens _imaQuotaUser (\ s a -> s{_imaQuotaUser = a})

-- | Returns response with indentations and line breaks.
imaPrettyPrint :: Lens' ImagesInsert' Bool
imaPrettyPrint
  = lens _imaPrettyPrint
      (\ s a -> s{_imaPrettyPrint = a})

-- | Multipart request metadata.
imaImage :: Lens' ImagesInsert' Image
imaImage = lens _imaImage (\ s a -> s{_imaImage = a})

-- | Project ID for this request.
imaProject :: Lens' ImagesInsert' Text
imaProject
  = lens _imaProject (\ s a -> s{_imaProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
imaUserIP :: Lens' ImagesInsert' (Maybe Text)
imaUserIP
  = lens _imaUserIP (\ s a -> s{_imaUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
imaKey :: Lens' ImagesInsert' (Maybe Key)
imaKey = lens _imaKey (\ s a -> s{_imaKey = a})

-- | OAuth 2.0 token for the current user.
imaOAuthToken :: Lens' ImagesInsert' (Maybe OAuthToken)
imaOAuthToken
  = lens _imaOAuthToken
      (\ s a -> s{_imaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
imaFields :: Lens' ImagesInsert' (Maybe Text)
imaFields
  = lens _imaFields (\ s a -> s{_imaFields = a})

instance GoogleAuth ImagesInsert' where
        authKey = imaKey . _Just
        authToken = imaOAuthToken . _Just

instance GoogleRequest ImagesInsert' where
        type Rs ImagesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesInsert'{..}
          = go _imaQuotaUser (Just _imaPrettyPrint) _imaProject
              _imaUserIP
              _imaKey
              _imaOAuthToken
              _imaFields
              (Just AltJSON)
              _imaImage
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ImagesInsertResource)
                      r
                      u
