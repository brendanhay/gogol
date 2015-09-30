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
    , imaProject
    , imaUserIp
    , imaKey
    , imaOauthToken
    , imaFields
    , imaAlt
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
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates an image resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'imagesInsert'' smart constructor.
data ImagesInsert' = ImagesInsert'
    { _imaQuotaUser   :: !(Maybe Text)
    , _imaPrettyPrint :: !Bool
    , _imaProject     :: !Text
    , _imaUserIp      :: !(Maybe Text)
    , _imaKey         :: !(Maybe Text)
    , _imaOauthToken  :: !(Maybe Text)
    , _imaFields      :: !(Maybe Text)
    , _imaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imaQuotaUser'
--
-- * 'imaPrettyPrint'
--
-- * 'imaProject'
--
-- * 'imaUserIp'
--
-- * 'imaKey'
--
-- * 'imaOauthToken'
--
-- * 'imaFields'
--
-- * 'imaAlt'
imagesInsert'
    :: Text -- ^ 'project'
    -> ImagesInsert'
imagesInsert' pImaProject_ =
    ImagesInsert'
    { _imaQuotaUser = Nothing
    , _imaPrettyPrint = True
    , _imaProject = pImaProject_
    , _imaUserIp = Nothing
    , _imaKey = Nothing
    , _imaOauthToken = Nothing
    , _imaFields = Nothing
    , _imaAlt = JSON
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

-- | Project ID for this request.
imaProject :: Lens' ImagesInsert' Text
imaProject
  = lens _imaProject (\ s a -> s{_imaProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
imaUserIp :: Lens' ImagesInsert' (Maybe Text)
imaUserIp
  = lens _imaUserIp (\ s a -> s{_imaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
imaKey :: Lens' ImagesInsert' (Maybe Text)
imaKey = lens _imaKey (\ s a -> s{_imaKey = a})

-- | OAuth 2.0 token for the current user.
imaOauthToken :: Lens' ImagesInsert' (Maybe Text)
imaOauthToken
  = lens _imaOauthToken
      (\ s a -> s{_imaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
imaFields :: Lens' ImagesInsert' (Maybe Text)
imaFields
  = lens _imaFields (\ s a -> s{_imaFields = a})

-- | Data format for the response.
imaAlt :: Lens' ImagesInsert' Alt
imaAlt = lens _imaAlt (\ s a -> s{_imaAlt = a})

instance GoogleRequest ImagesInsert' where
        type Rs ImagesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesInsert'{..}
          = go _imaQuotaUser (Just _imaPrettyPrint) _imaProject
              _imaUserIp
              _imaKey
              _imaOauthToken
              _imaFields
              (Just _imaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ImagesInsertResource)
                      r
                      u
