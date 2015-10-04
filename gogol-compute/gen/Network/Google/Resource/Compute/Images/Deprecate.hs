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
    , id1QuotaUser
    , id1Image
    , id1PrettyPrint
    , id1Project
    , id1UserIP
    , id1Payload
    , id1Key
    , id1OAuthToken
    , id1Fields
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
                             ReqBody '[JSON] DeprecationStatus :>
                               Post '[JSON] Operation

-- | Sets the deprecation status of an image. If an empty request body is
-- given, clears the deprecation status instead.
--
-- /See:/ 'imagesDeprecate'' smart constructor.
data ImagesDeprecate' = ImagesDeprecate'
    { _id1QuotaUser   :: !(Maybe Text)
    , _id1Image       :: !Text
    , _id1PrettyPrint :: !Bool
    , _id1Project     :: !Text
    , _id1UserIP      :: !(Maybe Text)
    , _id1Payload     :: !DeprecationStatus
    , _id1Key         :: !(Maybe Key)
    , _id1OAuthToken  :: !(Maybe OAuthToken)
    , _id1Fields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesDeprecate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'id1QuotaUser'
--
-- * 'id1Image'
--
-- * 'id1PrettyPrint'
--
-- * 'id1Project'
--
-- * 'id1UserIP'
--
-- * 'id1Payload'
--
-- * 'id1Key'
--
-- * 'id1OAuthToken'
--
-- * 'id1Fields'
imagesDeprecate'
    :: Text -- ^ 'image'
    -> Text -- ^ 'project'
    -> DeprecationStatus -- ^ 'payload'
    -> ImagesDeprecate'
imagesDeprecate' pId1Image_ pId1Project_ pId1Payload_ =
    ImagesDeprecate'
    { _id1QuotaUser = Nothing
    , _id1Image = pId1Image_
    , _id1PrettyPrint = True
    , _id1Project = pId1Project_
    , _id1UserIP = Nothing
    , _id1Payload = pId1Payload_
    , _id1Key = Nothing
    , _id1OAuthToken = Nothing
    , _id1Fields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
id1QuotaUser :: Lens' ImagesDeprecate' (Maybe Text)
id1QuotaUser
  = lens _id1QuotaUser (\ s a -> s{_id1QuotaUser = a})

-- | Image name.
id1Image :: Lens' ImagesDeprecate' Text
id1Image = lens _id1Image (\ s a -> s{_id1Image = a})

-- | Returns response with indentations and line breaks.
id1PrettyPrint :: Lens' ImagesDeprecate' Bool
id1PrettyPrint
  = lens _id1PrettyPrint
      (\ s a -> s{_id1PrettyPrint = a})

-- | Project ID for this request.
id1Project :: Lens' ImagesDeprecate' Text
id1Project
  = lens _id1Project (\ s a -> s{_id1Project = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
id1UserIP :: Lens' ImagesDeprecate' (Maybe Text)
id1UserIP
  = lens _id1UserIP (\ s a -> s{_id1UserIP = a})

-- | Multipart request metadata.
id1Payload :: Lens' ImagesDeprecate' DeprecationStatus
id1Payload
  = lens _id1Payload (\ s a -> s{_id1Payload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
id1Key :: Lens' ImagesDeprecate' (Maybe Key)
id1Key = lens _id1Key (\ s a -> s{_id1Key = a})

-- | OAuth 2.0 token for the current user.
id1OAuthToken :: Lens' ImagesDeprecate' (Maybe OAuthToken)
id1OAuthToken
  = lens _id1OAuthToken
      (\ s a -> s{_id1OAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
id1Fields :: Lens' ImagesDeprecate' (Maybe Text)
id1Fields
  = lens _id1Fields (\ s a -> s{_id1Fields = a})

instance GoogleAuth ImagesDeprecate' where
        authKey = id1Key . _Just
        authToken = id1OAuthToken . _Just

instance GoogleRequest ImagesDeprecate' where
        type Rs ImagesDeprecate' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesDeprecate'{..}
          = go _id1Project _id1Image _id1QuotaUser
              (Just _id1PrettyPrint)
              _id1UserIP
              _id1Fields
              _id1Key
              _id1OAuthToken
              (Just AltJSON)
              _id1Payload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ImagesDeprecateResource)
                      r
                      u
