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
    , id1UserIp
    , id1Key
    , id1OauthToken
    , id1Fields
    , id1Alt
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Sets the deprecation status of an image. If an empty request body is
-- given, clears the deprecation status instead.
--
-- /See:/ 'imagesDeprecate'' smart constructor.
data ImagesDeprecate' = ImagesDeprecate'
    { _id1QuotaUser   :: !(Maybe Text)
    , _id1Image       :: !Text
    , _id1PrettyPrint :: !Bool
    , _id1Project     :: !Text
    , _id1UserIp      :: !(Maybe Text)
    , _id1Key         :: !(Maybe Text)
    , _id1OauthToken  :: !(Maybe Text)
    , _id1Fields      :: !(Maybe Text)
    , _id1Alt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'id1UserIp'
--
-- * 'id1Key'
--
-- * 'id1OauthToken'
--
-- * 'id1Fields'
--
-- * 'id1Alt'
imagesDeprecate'
    :: Text -- ^ 'image'
    -> Text -- ^ 'project'
    -> ImagesDeprecate'
imagesDeprecate' pId1Image_ pId1Project_ =
    ImagesDeprecate'
    { _id1QuotaUser = Nothing
    , _id1Image = pId1Image_
    , _id1PrettyPrint = True
    , _id1Project = pId1Project_
    , _id1UserIp = Nothing
    , _id1Key = Nothing
    , _id1OauthToken = Nothing
    , _id1Fields = Nothing
    , _id1Alt = JSON
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
id1UserIp :: Lens' ImagesDeprecate' (Maybe Text)
id1UserIp
  = lens _id1UserIp (\ s a -> s{_id1UserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
id1Key :: Lens' ImagesDeprecate' (Maybe Text)
id1Key = lens _id1Key (\ s a -> s{_id1Key = a})

-- | OAuth 2.0 token for the current user.
id1OauthToken :: Lens' ImagesDeprecate' (Maybe Text)
id1OauthToken
  = lens _id1OauthToken
      (\ s a -> s{_id1OauthToken = a})

-- | Selector specifying which fields to include in a partial response.
id1Fields :: Lens' ImagesDeprecate' (Maybe Text)
id1Fields
  = lens _id1Fields (\ s a -> s{_id1Fields = a})

-- | Data format for the response.
id1Alt :: Lens' ImagesDeprecate' Alt
id1Alt = lens _id1Alt (\ s a -> s{_id1Alt = a})

instance GoogleRequest ImagesDeprecate' where
        type Rs ImagesDeprecate' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesDeprecate'{..}
          = go _id1QuotaUser _id1Image (Just _id1PrettyPrint)
              _id1Project
              _id1UserIp
              _id1Key
              _id1OauthToken
              _id1Fields
              (Just _id1Alt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ImagesDeprecateResource)
                      r
                      u
