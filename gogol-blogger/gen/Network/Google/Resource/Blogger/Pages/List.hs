{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Blogger.Pages.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the pages for a blog, optionally including non-LIVE statuses.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API Reference> for @BloggerPagesList@.
module Blogger.Pages.List
    (
    -- * REST Resource
      PagesListAPI

    -- * Creating a Request
    , pagesList
    , PagesList

    -- * Request Lenses
    , plStatus
    , plQuotaUser
    , plPrettyPrint
    , plUserIp
    , plBlogId
    , plKey
    , plFetchBodies
    , plView
    , plPageToken
    , plOauthToken
    , plMaxResults
    , plFields
    , plAlt
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesList@ which the
-- 'PagesList' request conforms to.
type PagesListAPI =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           QueryParams "status" Text :>
             QueryParam "fetchBodies" Bool :>
               QueryParam "view" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Word32 :>
                     Get '[JSON] PageList

-- | Retrieves the pages for a blog, optionally including non-LIVE statuses.
--
-- /See:/ 'pagesList' smart constructor.
data PagesList = PagesList
    { _plStatus      :: !(Maybe Text)
    , _plQuotaUser   :: !(Maybe Text)
    , _plPrettyPrint :: !Bool
    , _plUserIp      :: !(Maybe Text)
    , _plBlogId      :: !Text
    , _plKey         :: !(Maybe Text)
    , _plFetchBodies :: !(Maybe Bool)
    , _plView        :: !(Maybe Text)
    , _plPageToken   :: !(Maybe Text)
    , _plOauthToken  :: !(Maybe Text)
    , _plMaxResults  :: !(Maybe Word32)
    , _plFields      :: !(Maybe Text)
    , _plAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plStatus'
--
-- * 'plQuotaUser'
--
-- * 'plPrettyPrint'
--
-- * 'plUserIp'
--
-- * 'plBlogId'
--
-- * 'plKey'
--
-- * 'plFetchBodies'
--
-- * 'plView'
--
-- * 'plPageToken'
--
-- * 'plOauthToken'
--
-- * 'plMaxResults'
--
-- * 'plFields'
--
-- * 'plAlt'
pagesList
    :: Text -- ^ 'blogId'
    -> PagesList
pagesList pPlBlogId_ =
    PagesList
    { _plStatus = Nothing
    , _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plUserIp = Nothing
    , _plBlogId = pPlBlogId_
    , _plKey = Nothing
    , _plFetchBodies = Nothing
    , _plView = Nothing
    , _plPageToken = Nothing
    , _plOauthToken = Nothing
    , _plMaxResults = Nothing
    , _plFields = Nothing
    , _plAlt = "json"
    }

plStatus :: Lens' PagesList' (Maybe Text)
plStatus = lens _plStatus (\ s a -> s{_plStatus = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
plQuotaUser :: Lens' PagesList' (Maybe Text)
plQuotaUser
  = lens _plQuotaUser (\ s a -> s{_plQuotaUser = a})

-- | Returns response with indentations and line breaks.
plPrettyPrint :: Lens' PagesList' Bool
plPrettyPrint
  = lens _plPrettyPrint
      (\ s a -> s{_plPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
plUserIp :: Lens' PagesList' (Maybe Text)
plUserIp = lens _plUserIp (\ s a -> s{_plUserIp = a})

-- | ID of the blog to fetch Pages from.
plBlogId :: Lens' PagesList' Text
plBlogId = lens _plBlogId (\ s a -> s{_plBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' PagesList' (Maybe Text)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | Whether to retrieve the Page bodies.
plFetchBodies :: Lens' PagesList' (Maybe Bool)
plFetchBodies
  = lens _plFetchBodies
      (\ s a -> s{_plFetchBodies = a})

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
plView :: Lens' PagesList' (Maybe Text)
plView = lens _plView (\ s a -> s{_plView = a})

-- | Continuation token if the request is paged.
plPageToken :: Lens' PagesList' (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | OAuth 2.0 token for the current user.
plOauthToken :: Lens' PagesList' (Maybe Text)
plOauthToken
  = lens _plOauthToken (\ s a -> s{_plOauthToken = a})

-- | Maximum number of Pages to fetch.
plMaxResults :: Lens' PagesList' (Maybe Word32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' PagesList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

-- | Data format for the response.
plAlt :: Lens' PagesList' Text
plAlt = lens _plAlt (\ s a -> s{_plAlt = a})

instance GoogleRequest PagesList' where
        type Rs PagesList' = PageList
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesList{..}
          = go _plStatus _plQuotaUser _plPrettyPrint _plUserIp
              _plBlogId
              _plKey
              _plFetchBodies
              _plView
              _plPageToken
              _plOauthToken
              _plMaxResults
              _plFields
              _plAlt
          where go
                  = clientWithRoute (Proxy :: Proxy PagesListAPI) r u
