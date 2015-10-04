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
module Network.Google.Resource.Blogger.Pages.List
    (
    -- * REST Resource
      PagesListResource

    -- * Creating a Request
    , pagesList'
    , PagesList'

    -- * Request Lenses
    , plStatus
    , plQuotaUser
    , plPrettyPrint
    , plUserIP
    , plBlogId
    , plKey
    , plFetchBodies
    , plView
    , plPageToken
    , plOAuthToken
    , plMaxResults
    , plFields
    ) where

import           Network.Google.Blogger.Types
import           Network.Google.Prelude

-- | A resource alias for @BloggerPagesList@ which the
-- 'PagesList'' request conforms to.
type PagesListResource =
     "blogs" :>
       Capture "blogId" Text :>
         "pages" :>
           QueryParams "status" PagesListStatus :>
             QueryParam "fetchBodies" Bool :>
               QueryParam "view" PagesListView :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] PageList

-- | Retrieves the pages for a blog, optionally including non-LIVE statuses.
--
-- /See:/ 'pagesList'' smart constructor.
data PagesList' = PagesList'
    { _plStatus      :: !(Maybe [PagesListStatus])
    , _plQuotaUser   :: !(Maybe Text)
    , _plPrettyPrint :: !Bool
    , _plUserIP      :: !(Maybe Text)
    , _plBlogId      :: !Text
    , _plKey         :: !(Maybe Key)
    , _plFetchBodies :: !(Maybe Bool)
    , _plView        :: !(Maybe PagesListView)
    , _plPageToken   :: !(Maybe Text)
    , _plOAuthToken  :: !(Maybe OAuthToken)
    , _plMaxResults  :: !(Maybe Word32)
    , _plFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'plUserIP'
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
-- * 'plOAuthToken'
--
-- * 'plMaxResults'
--
-- * 'plFields'
pagesList'
    :: Text -- ^ 'blogId'
    -> PagesList'
pagesList' pPlBlogId_ =
    PagesList'
    { _plStatus = Nothing
    , _plQuotaUser = Nothing
    , _plPrettyPrint = True
    , _plUserIP = Nothing
    , _plBlogId = pPlBlogId_
    , _plKey = Nothing
    , _plFetchBodies = Nothing
    , _plView = Nothing
    , _plPageToken = Nothing
    , _plOAuthToken = Nothing
    , _plMaxResults = Nothing
    , _plFields = Nothing
    }

plStatus :: Lens' PagesList' [PagesListStatus]
plStatus
  = lens _plStatus (\ s a -> s{_plStatus = a}) .
      _Default
      . _Coerce

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
plUserIP :: Lens' PagesList' (Maybe Text)
plUserIP = lens _plUserIP (\ s a -> s{_plUserIP = a})

-- | ID of the blog to fetch Pages from.
plBlogId :: Lens' PagesList' Text
plBlogId = lens _plBlogId (\ s a -> s{_plBlogId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
plKey :: Lens' PagesList' (Maybe Key)
plKey = lens _plKey (\ s a -> s{_plKey = a})

-- | Whether to retrieve the Page bodies.
plFetchBodies :: Lens' PagesList' (Maybe Bool)
plFetchBodies
  = lens _plFetchBodies
      (\ s a -> s{_plFetchBodies = a})

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
plView :: Lens' PagesList' (Maybe PagesListView)
plView = lens _plView (\ s a -> s{_plView = a})

-- | Continuation token if the request is paged.
plPageToken :: Lens' PagesList' (Maybe Text)
plPageToken
  = lens _plPageToken (\ s a -> s{_plPageToken = a})

-- | OAuth 2.0 token for the current user.
plOAuthToken :: Lens' PagesList' (Maybe OAuthToken)
plOAuthToken
  = lens _plOAuthToken (\ s a -> s{_plOAuthToken = a})

-- | Maximum number of Pages to fetch.
plMaxResults :: Lens' PagesList' (Maybe Word32)
plMaxResults
  = lens _plMaxResults (\ s a -> s{_plMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
plFields :: Lens' PagesList' (Maybe Text)
plFields = lens _plFields (\ s a -> s{_plFields = a})

instance GoogleAuth PagesList' where
        authKey = plKey . _Just
        authToken = plOAuthToken . _Just

instance GoogleRequest PagesList' where
        type Rs PagesList' = PageList
        request = requestWithRoute defReq bloggerURL
        requestWithRoute r u PagesList'{..}
          = go _plBlogId (_plStatus ^. _Default) _plFetchBodies
              _plView
              _plPageToken
              _plMaxResults
              _plQuotaUser
              (Just _plPrettyPrint)
              _plUserIP
              _plFields
              _plKey
              _plOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy PagesListResource)
                      r
                      u
