{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Books.Onboarding.ListCategoryVolumes
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List available volumes under categories for onboarding experience.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.onboarding.listCategoryVolumes@.
module Network.Google.API.Books.Onboarding.ListCategoryVolumes
    (
    -- * REST Resource
      OnboardingListCategoryVolumesAPI

    -- * Creating a Request
    , onboardingListCategoryVolumes'
    , OnboardingListCategoryVolumes'

    -- * Request Lenses
    , olcvQuotaUser
    , olcvPrettyPrint
    , olcvUserIp
    , olcvLocale
    , olcvMaxAllowedMaturityRating
    , olcvKey
    , olcvCategoryId
    , olcvPageToken
    , olcvOauthToken
    , olcvPageSize
    , olcvFields
    , olcvAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for books.onboarding.listCategoryVolumes which the
-- 'OnboardingListCategoryVolumes'' request conforms to.
type OnboardingListCategoryVolumesAPI =
     "onboarding" :>
       "listCategoryVolumes" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "locale" Text :>
                 QueryParam "maxAllowedMaturityRating"
                   OnboardingListCategoryVolumes'MaxAllowedMaturityRating
                   :>
                   QueryParam "key" Text :>
                     QueryParam "categoryId" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "pageSize" Word32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] Volume2

-- | List available volumes under categories for onboarding experience.
--
-- /See:/ 'onboardingListCategoryVolumes'' smart constructor.
data OnboardingListCategoryVolumes' = OnboardingListCategoryVolumes'
    { _olcvQuotaUser                :: !(Maybe Text)
    , _olcvPrettyPrint              :: !Bool
    , _olcvUserIp                   :: !(Maybe Text)
    , _olcvLocale                   :: !(Maybe Text)
    , _olcvMaxAllowedMaturityRating :: !(Maybe OnboardingListCategoryVolumes'MaxAllowedMaturityRating)
    , _olcvKey                      :: !(Maybe Text)
    , _olcvCategoryId               :: !(Maybe Text)
    , _olcvPageToken                :: !(Maybe Text)
    , _olcvOauthToken               :: !(Maybe Text)
    , _olcvPageSize                 :: !(Maybe Word32)
    , _olcvFields                   :: !(Maybe Text)
    , _olcvAlt                      :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OnboardingListCategoryVolumes'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olcvQuotaUser'
--
-- * 'olcvPrettyPrint'
--
-- * 'olcvUserIp'
--
-- * 'olcvLocale'
--
-- * 'olcvMaxAllowedMaturityRating'
--
-- * 'olcvKey'
--
-- * 'olcvCategoryId'
--
-- * 'olcvPageToken'
--
-- * 'olcvOauthToken'
--
-- * 'olcvPageSize'
--
-- * 'olcvFields'
--
-- * 'olcvAlt'
onboardingListCategoryVolumes'
    :: OnboardingListCategoryVolumes'
onboardingListCategoryVolumes' =
    OnboardingListCategoryVolumes'
    { _olcvQuotaUser = Nothing
    , _olcvPrettyPrint = True
    , _olcvUserIp = Nothing
    , _olcvLocale = Nothing
    , _olcvMaxAllowedMaturityRating = Nothing
    , _olcvKey = Nothing
    , _olcvCategoryId = Nothing
    , _olcvPageToken = Nothing
    , _olcvOauthToken = Nothing
    , _olcvPageSize = Nothing
    , _olcvFields = Nothing
    , _olcvAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
olcvQuotaUser :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvQuotaUser
  = lens _olcvQuotaUser
      (\ s a -> s{_olcvQuotaUser = a})

-- | Returns response with indentations and line breaks.
olcvPrettyPrint :: Lens' OnboardingListCategoryVolumes' Bool
olcvPrettyPrint
  = lens _olcvPrettyPrint
      (\ s a -> s{_olcvPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
olcvUserIp :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvUserIp
  = lens _olcvUserIp (\ s a -> s{_olcvUserIp = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Default is en-US if
-- unset.
olcvLocale :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvLocale
  = lens _olcvLocale (\ s a -> s{_olcvLocale = a})

-- | The maximum allowed maturity rating of returned volumes. Books with a
-- higher maturity rating are filtered out.
olcvMaxAllowedMaturityRating :: Lens' OnboardingListCategoryVolumes' (Maybe OnboardingListCategoryVolumes'MaxAllowedMaturityRating)
olcvMaxAllowedMaturityRating
  = lens _olcvMaxAllowedMaturityRating
      (\ s a -> s{_olcvMaxAllowedMaturityRating = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
olcvKey :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvKey = lens _olcvKey (\ s a -> s{_olcvKey = a})

-- | List of category ids requested.
olcvCategoryId :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvCategoryId
  = lens _olcvCategoryId
      (\ s a -> s{_olcvCategoryId = a})

-- | The value of the nextToken from the previous page.
olcvPageToken :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvPageToken
  = lens _olcvPageToken
      (\ s a -> s{_olcvPageToken = a})

-- | OAuth 2.0 token for the current user.
olcvOauthToken :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvOauthToken
  = lens _olcvOauthToken
      (\ s a -> s{_olcvOauthToken = a})

-- | Number of maximum results per page to be included in the response.
olcvPageSize :: Lens' OnboardingListCategoryVolumes' (Maybe Word32)
olcvPageSize
  = lens _olcvPageSize (\ s a -> s{_olcvPageSize = a})

-- | Selector specifying which fields to include in a partial response.
olcvFields :: Lens' OnboardingListCategoryVolumes' (Maybe Text)
olcvFields
  = lens _olcvFields (\ s a -> s{_olcvFields = a})

-- | Data format for the response.
olcvAlt :: Lens' OnboardingListCategoryVolumes' Alt
olcvAlt = lens _olcvAlt (\ s a -> s{_olcvAlt = a})

instance GoogleRequest OnboardingListCategoryVolumes'
         where
        type Rs OnboardingListCategoryVolumes' = Volume2
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          OnboardingListCategoryVolumes'{..}
          = go _olcvQuotaUser (Just _olcvPrettyPrint)
              _olcvUserIp
              _olcvLocale
              _olcvMaxAllowedMaturityRating
              _olcvKey
              _olcvCategoryId
              _olcvPageToken
              _olcvOauthToken
              _olcvPageSize
              _olcvFields
              (Just _olcvAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy OnboardingListCategoryVolumesAPI)
                      r
                      u
